#! /usr/bin/env python3

import os
import re
import sys
import xml.etree.ElementTree as ET
from distutils.dir_util import copy_tree
from datetime import datetime
from typing import Dict, List, Set

from static import KNOWN_ELEMENTS, MAX_FORMAT_VERSION
from property_types import parse_param
from errors import *
from qml import create_qml


# TODO
Platform = Dict[str, str]

FOUND_UNSUPPORTED: Set[str] = set()


def verify_format_version(filepath, node):
    if not node.text:
        warn(f"{filepath}: The <formatVersion> is empty")
        return
    try:
        version = int(node.text.strip())
        if version > MAX_FORMAT_VERSION:
            warn(f"{filepath}: This theme may use features not yet supported")
    except ValueError:
        warn(f"{filepath}: The <formatVersion> seems to be an invalid number")


def next_elem_match(all_elems, name, typestr):
    for idx, e in enumerate(all_elems):
        if e['name'] == name and e['type'] == typestr:
            return idx
    return None


def replace_variables(text, variables):
    var_pattern = re.compile('\\${(.+?)}')
    vars_handled_later = ['system.theme', 'system.name', 'system.fullName']

    var_match = var_pattern.search(text)
    while var_match:
        var_key = var_match.group(1)
        if var_key in vars_handled_later:
            var_match = var_pattern.search(text, pos=var_match.end())
            continue

        var_value = ''
        if var_key in variables:
            var_value = variables[var_key]

        text = text[:var_match.start()] + var_value + text[var_match.end():]
        var_match = var_pattern.search(text, pos=var_match.start() + len(var_value))

    return text


def read_view(root_dir, filepath, node, ui_view_elems, variables):
    global FOUND_UNSUPPORTED

    curr_dir = os.path.dirname(filepath)

    for element in node:
        if element.tag not in KNOWN_ELEMENTS:
            FOUND_UNSUPPORTED.add(element.tag)
            continue

        text = element.text.strip() if element.text else None
        if 'name' not in element.attrib:
            warn(f"{filepath}: An element has no 'name' field")
            continue

        affected_items = [s.strip() for s in re.split(',\s*', element.attrib['name'])]
        new_ui_elem = {
            'name': None,
            'type': element.tag,
            'is_extra': 'extra' in element.attrib,
            'params': {},
        }
        for param in element:
            if param.tag not in KNOWN_ELEMENTS[element.tag]:
                warn(f"{filepath}: Unknown or unsupported element parameter `{param.tag}` for `{element.tag}`")
                continue

            param_type = KNOWN_ELEMENTS[element.tag][param.tag]

            text = param.text.strip() if param.text else None
            if not text:
                warn(f"{filepath}: Empty element parameter `{param.tag}` for `{element.tag}`")
                continue

            text = replace_variables(text, variables)
            if not text:
                warn(f"{filepath}: After replacing the variables, `{param.tag}` for `{element.tag}` is empty")
                continue

            param_obj = parse_param(curr_dir, param_type, text)
            if param_obj is None:
                print_error(f"{filepath}: Could not process element parameter `{param.tag}` "
                            f"for `{element.tag}` with value `{text}`")
                continue

            new_ui_elem['params'][param.tag] = param_obj

            # if 'system_help' in affected_items:
            # print(affected_items, param.tag, param_obj)

        for itemname in affected_items:
            ui_elem_idx = next_elem_match(ui_view_elems, itemname, element.tag)
            if ui_elem_idx is None:
                ui_view_elems.append(new_ui_elem.copy())
                ui_elem_idx = -1
                ui_view_elems[ui_elem_idx]['name'] = itemname
            else:
                ui_view_elems[ui_elem_idx]['params'] = {
                    **ui_view_elems[ui_elem_idx]['params'],
                    **new_ui_elem['params'],
                }

            # print(f"  - {element.tag} `{itemname}` (extra: {new_ui_elem['is_extra']})")
            # for prop in ui_view_elems[ui_elem_idx]['params']:
                # print(f"    - {prop}: {ui_view_elems[ui_elem_idx]['params'][prop]}")


def read_theme_xml(root_dir, filepath, variables, ui_views, check_version=True):
    # print_info(f'  - reading `{filepath}`...')
    try:
        # ES supports illegal XMLs...
        # root = ET.parse(filepath).getroot()
        with open(filepath, 'r') as file:
            contents = file.read() \
                .replace('<!---', '<!-- ') \
                .replace('--->', ' -->')
            root = ET.fromstring(contents)
    except ET.ParseError as err:
        raise RuntimeError(f"{filepath}: The file does not follow the rules of the XML format: {err}")
    except FileNotFoundError:
        raise RuntimeError(f"{filepath}: File not found")
    except UnicodeDecodeError as err:
        raise RuntimeError(f"{filepath}: Invalid unicode data: {err}")

    if root.tag != 'theme':
        raise RuntimeError(f"{filepath}: A theme XML must start with a <theme> element")

    if check_version:
        format_version = root.find('formatVersion')
        if format_version is None:
            raise RuntimeError(f'{filepath}: No <formatVersion> tag found')
        verify_format_version(filepath, format_version)

    for node in root.findall('variables'):
        for child in node:
            text = child.text.strip() if child.text else None
            if text:
                variables[child.tag] = text

    for node in root.findall('include'):
        text = node.text.strip() if node.text else None
        if not text:
            warn(f"{filepath}: Found an empty include")
            continue
        path = os.path.join(os.path.dirname(filepath), text)
        read_theme_xml(root_dir, path, variables, ui_views, check_version=False)

    feature_groups = [root] + root.findall('feature')
    for feature_group in feature_groups:
        for node in feature_group.findall('view'):
            if node.attrib and 'name' in node.attrib:
                viewtypes = [s.strip() for s in re.split('[,\s]+', node.attrib['name'])]
                for viewtype in viewtypes:
                    if viewtype not in ui_views:
                        ui_views[viewtype] = []
                    read_view(root_dir, filepath, node, ui_views[viewtype], variables)

    # print_info(f'  - returning from `{filepath}`...')


def process_platform(root_dir, xml_path, dirname, ui_platforms):
    platform = {
        'name': dirname,
        'variables': {},
        'views': {},
    }
    if platform['name'] == '.':
        platform['name'] = '__generic'

    # FIXME
    # platform['variables'] = {
    #     'system.theme': platform['name'],
    #     'system.name': platform['name'],
    #     'system.fullName': platform['name'],
    # }

    try:
        read_theme_xml(root_dir, xml_path, platform['variables'], platform['views'])
        ui_platforms.append(platform)
    except RuntimeError as err:
        print_error(err)
        warn(f"Platform '{dirname}' skipped")


def find_systems(root_dir) -> List[Platform]:
    ui_platforms: List[Platform] = []

    _, platform_dirs, root_files = next(os.walk(root_dir))
    for dirname in platform_dirs:
        theme_xml_path = os.path.join(root_dir, dirname, 'theme.xml')
        if os.path.isfile(theme_xml_path):
            print_info(f"Processing platform theme for `{dirname}`")
            process_platform(root_dir, theme_xml_path, dirname, ui_platforms)

    fallback_xml_path = os.path.join(root_dir, 'theme.xml')
    if os.path.isfile(fallback_xml_path):
        print_info("Processing the fallback theme")
        process_platform(root_dir, fallback_xml_path, '.', ui_platforms)

    if FOUND_UNSUPPORTED:
        warn("The following unknown or unsupported items were found in this theme:")
        for ty in FOUND_UNSUPPORTED:
            warn(f"  - {ty}")

    return ui_platforms


def print_systems(ui_platforms):
    for system in ui_platforms:
        print_info("Platform:", system['name'])
        if system['variables']:
            print_info("Variables:")
            for k, v in system['variables'].items():
                print_info(f"  - {k}: {v}")
        if system['views']:
            print_info("Views:")
            for viewtype, elems in system['views'].items():
                print_info(f"  - {viewtype}: {len(elems)} elem")
                for elem in elems:
                    print_info(f"    - {elem['type']} {elem['name']} extra:{elem['is_extra']}")
                    for prop in elem['params']:
                        print_info(f"      - {prop}: {elem['params'][prop]}")
        break


def has_structural_similarity(ui_platforms):
    if not ui_platforms:
        return True

    for system in ui_platforms:
        for viewtype, elems in system['views'].items():
            if viewtype not in ui_platforms[0]['views']:
                print_info(f"{system['name']}: {viewtype} not in {ui_platforms[0]['views'].keys()}")
                return False
            if len(elems) != len(ui_platforms[0]['views'][viewtype]):
                print_info(f"{system['name']}: {len(elems)} != {len(ui_platforms[0]['views'][viewtype])}")
                return False
            for idx in range(len(elems)):
                if elems[idx]['type'] != ui_platforms[0]['views'][viewtype][idx]['type']:
                    print_info(f"{system['name']}: at idx {idx} {elems[idx]['type']} != {ui_platforms[0]['views'][viewtype][idx]['type']}")
                    return False

    return True


def dump_files(files: Dict[str, str], out_root: str):
    hashmark_header = \
        "# Autogenerated content, do not edit by hand!\n" + \
        "# converter v0.1.0\n" + \
        "# " + str(datetime.now()) + "\n" + \
        "\n"
    qml_header = hashmark_header.replace('#', '//')

    idx_cur = 0
    # idx_max = len(out_files)
    for relpath, contents in out_files.items():
        actual_path = os.path.join(out_root, relpath)
        os.makedirs(os.path.dirname(actual_path), exist_ok=True)
        with open(actual_path, 'wt') as file:
            # print(f"[{idx_cur + 1:3}/{idx_max:3}] Writing `{actual_path}`...")
            if actual_path.endswith('.qml') or actual_path.endswith('.js'):
                file.write(qml_header)
            else:
                file.write(hashmark_header)
            file.write(contents)
        idx_cur += 1


def copy_resources(targetdir):
    dirname = '__es_resources'
    copy_tree(sys.path[0] + '/' + dirname, targetdir + '/' + dirname)


if __name__ == "__main__":
    if len(sys.argv) < 2:
        print(f"Usage: {sys.argv[0]} INPUTDIR [OUTPUTDIR]")
        sys.exit(1)

    ui_platforms = find_systems(sys.argv[1])

    theme_name = os.path.abspath(sys.argv[1])
    theme_name = os.path.basename(theme_name)

    out_files = create_qml(theme_name, ui_platforms)
    if len(sys.argv) > 2:
        dump_files(out_files, sys.argv[2])
        copy_resources(sys.argv[2])

    # print(has_structural_similarity(ui_platforms))
