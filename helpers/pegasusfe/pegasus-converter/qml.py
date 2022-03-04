import os
from qml_render import *
from static import *


def extend_with_defaults(viewtype, elems):
    def add_maybe(name, kind, elems):
        for elem in elems:
            # FIXME: handle non-extra items marked as extra
            # if elem['name'] == name and elem['type'] == kind and not elem['is_extra']:
            if elem['name'] == name and elem['type'] == kind:
                # elem['is_extra'] = False
                return

        elems.append({
            'name': name,
            'type': kind,
            'is_extra': False,
            'params': {},
        })

    default_elems = RESERVED_ITEMS.get(viewtype, {})

    if viewtype == 'system':
        default_elems = RESERVED_ITEMS[viewtype].copy()
        default_elems.pop('logo')
        default_elems.pop('logoText')

    for ename, etype in default_elems.items():
        add_maybe(ename, etype, elems)


def create_qml_defaults(out_files):
    for viewtype in ['system', 'detailed']:
        items = []
        extend_with_defaults(viewtype, items)

        lines = render_view_items(viewtype, None, items)
        import_lines = 5
        lines.insert(import_lines, "  Rectangle { anchors.fill: parent; color: '#fff' }")

        filepath = os.path.join('__components', 'Missing' + viewtype.title() + 'View.qml')
        out_files[filepath] = '\n'.join(lines)


def create_qml_platform_views(platform, out_files):
    for viewtype in platform['views']:
        if viewtype not in SUPPORTED_VIEWS:
            continue

        extend_with_defaults(viewtype, platform['views'][viewtype])
        lines = render_view_items(viewtype, platform['name'], platform['views'][viewtype])

        filepath = os.path.join(platform['name'], viewtype + '.qml')
        out_files[filepath] = '\n'.join(lines)


def collect_fonts(ui_platforms):
    paths = []
    for platform in ui_platforms:
        for viewtype in platform['views']:
            for elem in platform['views'][viewtype]:
                if 'fontPath' in elem['params']:
                    paths.append(elem['params']['fontPath'])

    paths = map(os.path.normpath, paths)
    paths = set(paths)
    paths = [{'name': font_path_to_name(p), 'path': p} for p in paths]
    return paths


def collect_platform_logos(ui_platforms):
    logos = {}
    for platform in ui_platforms:
        if 'system' not in platform['views']:
            continue
        for elem in platform['views']['system']:
            if elem['type'] == 'image' and elem['name'] == 'logo' and 'path' in elem['params']:
                logos[platform['name']] = elem['params']['path']
    return logos


def collect_platform_views(ui_platforms) -> Dict[str, List[str]]:
    views: Dict[str, List[str]] = {}
    for platform in ui_platforms:
        pname = platform['name']
        views[pname] = []
        for viewtype in platform['views']:
            views[pname].append(viewtype)
    return views


def fill_templates(ui_platforms, out_files):
    fonts = collect_fonts(ui_platforms)
    platform_logos = collect_platform_logos(ui_platforms)
    platform_views = collect_platform_views(ui_platforms)

    def sorted_str(lines: List[str]) -> str:
        lines.sort()
        return '\n'.join(lines).strip()

    platform_logos_str = [f"    ['{platform}', '{path}']," for platform, path in platform_logos.items()]
    platform_logos_str = sorted_str(platform_logos_str)

    platforms_w_system_str = [f"    '{k}'," for k, views in platform_views.items() if 'system' in views]
    platforms_w_system_str = sorted_str(platforms_w_system_str)

    platforms_w_details_str = [f"    '{k}'," for k, views in platform_views.items() if 'detailed' in views]
    platforms_w_details_str = sorted_str(platforms_w_details_str)

    fontlist_str = [f"  FontLoader {{ id: {f['name']}; source: '{f['path']}' }}" for f in fonts]
    fontlist_str = sorted_str(fontlist_str)

    out_files['theme.qml'] = out_files['theme.qml'] \
        .replace('$$FONTLIST$$', fontlist_str)

    out_files['__components/DetailsView.qml'] = out_files['__components/DetailsView.qml'] \
        .replace('$$PLATFORMS_WITH_DETAILS$$', platforms_w_details_str)

    out_files['__components/SystemView.qml'] = out_files['__components/SystemView.qml'] \
        .replace('$$PLATFORM_LOGOS$$', platform_logos_str) \
        .replace('$$PLATFORMS_WITH_SYSTEMS$$', platforms_w_system_str)


def create_qml(theme_name, ui_platforms) -> Dict[str, str]:
    out_files: Dict[str, str] = {}

    create_qml_defaults(out_files)
    for platform in ui_platforms:
        create_qml_platform_views(platform, out_files)

    for path, contents in STATIC_FILES.items():
        out_files[path] = contents.strip()

    fill_templates(ui_platforms, out_files)

    lines = [
        "name: " + theme_name,
    ]
    out_files['theme.cfg'] = '\n'.join(lines)

    return out_files
