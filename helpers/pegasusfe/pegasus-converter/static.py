from enum import Enum, auto
from typing import Dict, Tuple, List


MAX_FORMAT_VERSION = 6


class PropTypes(Enum):
    NORMALIZED_PAIR = auto()
    NORMALIZED_RECT = auto()
    PATH = auto()
    STRING = auto()
    COLOR = auto()
    FLOAT = auto()
    BOOLEAN = auto()


KNOWN_ELEMENTS: Dict[str, Dict[str, PropTypes]] = {
    'image': {
        'pos': PropTypes.NORMALIZED_PAIR,
        'size': PropTypes.NORMALIZED_PAIR,
        'maxSize': PropTypes.NORMALIZED_PAIR,
        'origin': PropTypes.NORMALIZED_PAIR,
        'rotation': PropTypes.FLOAT,
        'rotationOrigin': PropTypes.NORMALIZED_PAIR,
        'path': PropTypes.PATH,
        'default': PropTypes.PATH,
        'tile': PropTypes.BOOLEAN,
        'color': PropTypes.COLOR,
        # 'colorEnd': PropTypes.COLOR,
        # 'gradientType': PropTypes.STRING,
        'visible': PropTypes.BOOLEAN,
        'zIndex': PropTypes.FLOAT,
    },
    # 'imagegrid': {
    #     'pos': PropTypes.NORMALIZED_PAIR,
    #     'size': PropTypes.NORMALIZED_PAIR,
    #     'margin': PropTypes.NORMALIZED_PAIR,
    #     'padding': PropTypes.NORMALIZED_RECT,
    #     'autoLayout': PropTypes.NORMALIZED_PAIR,
    #     'autoLayoutSelectedZoom': PropTypes.FLOAT,
    #     'gameImage': PropTypes.PATH,
    #     'folderImage': PropTypes.PATH,
    #     'imageSource': PropTypes.STRING,
    #     'scrollDirection': PropTypes.STRING,
    #     'centerSelection': PropTypes.BOOLEAN,
    #     'scrollLoop': PropTypes.BOOLEAN,
    #     'animate': PropTypes.BOOLEAN,
    #     'zIndex': PropTypes.FLOAT,
    # },
    # 'gridtile': {
    #     'size': PropTypes.NORMALIZED_PAIR,
    #     'padding': PropTypes.NORMALIZED_PAIR,
    #     'imageColor': PropTypes.COLOR,
    #     'backgroundImage': PropTypes.PATH,
    #     'backgroundCornerSize': PropTypes.NORMALIZED_PAIR,
    #     'backgroundColor': PropTypes.COLOR,
    #     'backgroundCenterColor': PropTypes.COLOR,
    #     'backgroundEdgeColor': PropTypes.COLOR,
    # },
    'text': {
        'pos': PropTypes.NORMALIZED_PAIR,
        'size': PropTypes.NORMALIZED_PAIR,
        'origin': PropTypes.NORMALIZED_PAIR,
        'rotation': PropTypes.FLOAT,
        'rotationOrigin': PropTypes.NORMALIZED_PAIR,
        'text': PropTypes.STRING,
        'backgroundColor': PropTypes.COLOR,
        'fontPath': PropTypes.PATH,
        'fontSize': PropTypes.FLOAT,
        'color': PropTypes.COLOR,
        'alignment': PropTypes.STRING,
        'forceUppercase': PropTypes.BOOLEAN,
        'lineSpacing': PropTypes.FLOAT,
        'value': PropTypes.STRING,
        'visible': PropTypes.BOOLEAN,
        'zIndex': PropTypes.FLOAT,
    },
    'textlist': {
        'pos': PropTypes.NORMALIZED_PAIR,
        'size': PropTypes.NORMALIZED_PAIR,
        'origin': PropTypes.NORMALIZED_PAIR,
        'selectorHeight': PropTypes.FLOAT,
        # 'selectorOffsetY': PropTypes.FLOAT,
        'selectorColor': PropTypes.COLOR,
        # 'selectorColorEnd': PropTypes.COLOR,
        # 'selectorGradientType': PropTypes.STRING,
        'selectorImagePath': PropTypes.PATH,
        'selectorImageTile': PropTypes.BOOLEAN,
        'selectedColor': PropTypes.COLOR,
        'primaryColor': PropTypes.COLOR,
        'secondaryColor': PropTypes.COLOR,
        'fontPath': PropTypes.PATH,
        'fontSize': PropTypes.FLOAT,
        # 'scrollSound': PropTypes.PATH,
        'alignment': PropTypes.STRING,
        'horizontalMargin': PropTypes.FLOAT,
        'forceUppercase': PropTypes.BOOLEAN,
        'lineSpacing': PropTypes.FLOAT,
        'zIndex': PropTypes.FLOAT,
    },
    # 'container': {
    #     'pos': PropTypes.NORMALIZED_PAIR,
    #     'size': PropTypes.NORMALIZED_PAIR,
    #     'origin': PropTypes.NORMALIZED_PAIR,
    #     'visible': PropTypes.BOOLEAN,
    #     'zIndex': PropTypes.FLOAT,
    # },
    # 'ninepatch': {
    #     'pos': PropTypes.NORMALIZED_PAIR,
    #     'size': PropTypes.NORMALIZED_PAIR,
    #     'path': PropTypes.PATH,
    #     'visible': PropTypes.BOOLEAN,
    #     'zIndex': PropTypes.FLOAT,
    # },
    'datetime': {
        'pos': PropTypes.NORMALIZED_PAIR,
        'size': PropTypes.NORMALIZED_PAIR,
        'origin': PropTypes.NORMALIZED_PAIR,
        'rotation': PropTypes.FLOAT,
        'rotationOrigin': PropTypes.NORMALIZED_PAIR,
        'backgroundColor': PropTypes.COLOR,
        'fontPath': PropTypes.PATH,
        'fontSize': PropTypes.FLOAT,
        'color': PropTypes.COLOR,
        'alignment': PropTypes.STRING,
        'forceUppercase': PropTypes.BOOLEAN,
        'lineSpacing': PropTypes.FLOAT,
        # 'value': PropTypes.STRING,  # undocumented
        'format': PropTypes.STRING,
        'displayRelative': PropTypes.BOOLEAN,
        'visible': PropTypes.BOOLEAN,
        'zIndex': PropTypes.FLOAT,
    },
    'rating': {
        'pos': PropTypes.NORMALIZED_PAIR,
        'size': PropTypes.NORMALIZED_PAIR,
        'origin': PropTypes.NORMALIZED_PAIR,
        'rotation': PropTypes.FLOAT,
        'rotationOrigin': PropTypes.NORMALIZED_PAIR,
        'color': PropTypes.COLOR,
        'filledPath': PropTypes.PATH,
        'unfilledPath': PropTypes.PATH,
        'visible': PropTypes.BOOLEAN,
        'zIndex': PropTypes.FLOAT,
    },
    # 'sound': {
    #     'path': PropTypes.PATH,
    # },
    # 'helpsystem': {
    #     'pos': PropTypes.NORMALIZED_PAIR,
    #     'origin': PropTypes.NORMALIZED_PAIR,
    #     'textColor': PropTypes.COLOR,
    #     'iconColor': PropTypes.COLOR,
    #     'fontPath': PropTypes.PATH,
    #     'fontSize': PropTypes.FLOAT,
    # },
    # 'video': {
    #     'pos': PropTypes.NORMALIZED_PAIR,
    #     'size': PropTypes.NORMALIZED_PAIR,
    #     'maxSize': PropTypes.NORMALIZED_PAIR,
    #     'origin': PropTypes.NORMALIZED_PAIR,
    #     'rotation': PropTypes.FLOAT,
    #     'rotationOrigin': PropTypes.NORMALIZED_PAIR,
    #     'default': PropTypes.PATH,
    #     'delay': PropTypes.FLOAT,
    #     'visible': PropTypes.BOOLEAN,
    #     'zIndex': PropTypes.FLOAT,
    #     'showSnapshotNoVideo': PropTypes.BOOLEAN,
    #     'showSnapshotDelay': PropTypes.BOOLEAN,
    # },
    # 'carousel': {
    #     'type': PropTypes.STRING,
    #     'size': PropTypes.NORMALIZED_PAIR,
    #     'pos': PropTypes.NORMALIZED_PAIR,
    #     'origin': PropTypes.NORMALIZED_PAIR,
    #     'color': PropTypes.COLOR,
    #     'colorEnd': PropTypes.COLOR,
    #     'gradientType': PropTypes.STRING,
    #     'logoScale': PropTypes.FLOAT,
    #     'logoRotation': PropTypes.FLOAT,
    #     'logoRotationOrigin': PropTypes.NORMALIZED_PAIR,
    #     'logoSize': PropTypes.NORMALIZED_PAIR,
    #     'logoAlignment': PropTypes.STRING,
    #     'maxLogoCount': PropTypes.FLOAT,
    #     'zIndex': PropTypes.FLOAT,
    # },
}

SUPPORTED_VIEWS = [
    'system',
    'basic',
    'detailed',
]

RESERVED_ITEMS: Dict[str, Dict[str, str]] = {
    'system': {
        'background': 'image',
        'logo': 'image',
        'logoText': 'text',
    },
    'basic': {
        'background': 'image',
        'logo': 'image',
        'logoText': 'text',
        'gamelist': 'textlist',
    },
    'detailed': {
        'background': 'image',
        'logo': 'image',
        'logoText': 'text',
        'gamelist': 'textlist',
        'md_image': 'image',
        'md_name': 'text',
        'md_description': 'text',
        'md_lbl_rating': 'text',
        'md_lbl_releasedate': 'text',
        'md_lbl_developer': 'text',
        'md_lbl_publisher': 'text',
        'md_lbl_genre': 'text',
        'md_lbl_players': 'text',
        'md_lbl_lastplayed': 'text',
        'md_lbl_playcount': 'text',
        'md_rating': 'rating',
        'md_releasedate': 'datetime',
        'md_developer': 'text',
        'md_publisher': 'text',
        'md_genre': 'text',
        'md_players': 'text',
        'md_lastplayed': 'datetime',
        'md_playcount': 'text',
    },
}

# These depend on data to display, and cannot be created as extra
RESTRICTED_TYPES: List[str] = [
    'datetime',
    'carousel',
    'imagegrid',
    'textlist',
]

FONT_SIZE_MINI: str = '0.03 * root.height'
FONT_SIZE_SMALL: str = '0.035 * root.height'
FONT_SIZE_MEDIUM: str = '0.045 * root.height'
FONT_SIZE_LARGE: str = '0.085 * root.height'

DEFAULT_ZORDERS: Dict[str, int] = {
    'background': 0,
    'gamelist': 20,
    'gamegrid': 20,
    'md_image': 30,
    'md_video': 30,
    'md_marquee': 35,
    'md_lbl_rating': 40,
    'md_lbl_releasedate': 40,
    'md_lbl_developer': 40,
    'md_lbl_publisher': 40,
    'md_lbl_genre': 40,
    'md_lbl_players': 40,
    'md_lbl_lastplayed': 40,
    'md_lbl_playcount': 40,
    'md_rating': 40,
    'md_releasedate': 40,
    'md_developer': 40,
    'md_publisher': 40,
    'md_genre': 40,
    'md_players': 40,
    'md_lastplayed': 40,
    'md_playcount': 40,
    'md_description': 40,
    'md_name': 40,
    'logoText': 50,
    'logo': 50,
    'systemcarousel': 40,
    'systemInfo': 50,
}

DEFAULT_PROPS: Dict[Tuple[str, str, str], Dict[str, str]] = {
    ('*', 'image', '*'): {
        'asynchronous': 'true',
        'visible': 'status == Image.Ready',
        'opacity': 'visible ? 1.0 : 0.0',
        # ie. untransformed:
        # 'width': 'root.width',
        # 'height': 'root.height',
        # 'fillMode': 'Image.Pad',
        # 'horizontalAlignment': 'Image.AlignLeft',
        # 'verticalAlignment': 'Image.AlignTop',
        'fillMode': 'Image.PreserveAspectFit',
        'smooth': 'false',
    },
    ('*', 'image', 'logo'): {
        'x': 'root.width * 0.5 - width * 0.5',
        'height': 'root.height * 0.185',
        # 'fillMode': 'Image.PreserveAspectFit',
    },
    ('*', 'image', 'background'): {
        'width': 'root.width',
        'height': 'root.height',
        # 'fillMode': 'Image.Stretch',
        # 'fillMode': 'Image.PreserveAspectFit',
        # 'horizontalAlignment': 'Image.AlignHCenter',
        # 'verticalAlignment': 'Image.AlignVCenter',
    },
    # NOTE: origin 0.5/0.5 handled in the render code
    ('detailed', 'image', 'md_image'): {
        'x': 'root.width * 0.25',
        'y': 'gamelist.y + root.height * 0.2125',
        'width': 'root.width * 0.48',
        'height': 'root.height * 0.4',
        # 'fillMode': 'Image.PreserveAspectFit',
        'source': 'currentGame.assets.boxFront',
    },
    # ('detailed', 'image', 'md_marquee'): {
    #     'source': 'currentGame.assets.marquee',
    # },
    ('*', 'text', '*'): {
        'textFormat': 'Text.PlainText',
        'color': "'#000'",
        'horizontalAlignment': 'Text.AlignLeft',
        'verticalAlignment': 'Text.AlignVCenter',
        # 'lineHeight': '1.5',
        'font.pixelSize': FONT_SIZE_MEDIUM,
        'font.family': 'es_default.name',
    },
    ('*', 'text', 'logoText'): {
        'x': 'root.width * 0.5 - width * 0.5',
        'y': '0',
        'text': 'modelData.name',
        'visible': '!logo.visible',
    },
    ('*', 'textlist', 'gamelist'): {
        'readonly property var currentGame': "model.get(currentIndex)",
        'model': "modelData.games",
        'focus': 'true',
        'highlightMoveDuration': '0',
        'readonly property int highlightHeight': f'{FONT_SIZE_MEDIUM} * 1.5',
        'preferredHighlightBegin': 'height * 0.5 - highlightHeight * 0.5',
        'preferredHighlightEnd': 'preferredHighlightBegin + highlightHeight',
        'highlightRangeMode': 'ListView.ApplyRange',
        'Keys.onPressed': 'if (!event.isAutoRepeat && api.keys.isAccept(event))'
                          ' { event.accepted = true; currentGame.launch(); }',
    },
    ('basic', 'textlist', 'gamelist'): {
        'x': '0',
        'y': '0.2 * root.height',
        'width': 'root.width',
        'height': '0.8 * root.height',
    },
    ('detailed', 'textlist', 'gamelist'): {
        'x': '0.51 * root.width',
        'y': '0.2 * root.height',
        'width': '0.49 * root.width',
        'height': '0.8 * root.height',
    },
    ('*', 'textlist__delegate', 'gamelist__delegate'): {
        'width': 'ListView.view.width',
        # 'height': 'font.pixelSize * 1.5',
        'font.pixelSize': FONT_SIZE_MEDIUM,
        'elide': 'Text.ElideRight',
        'lineHeight': '1.5',
        'horizontalAlignment': 'Text.AlignHCenter',
        'verticalAlignment': 'Text.AlignVCenter',
        'color': "'#00f'",
        'text': 'modelData.title',
    },
    ('detailed', 'textlist__delegate', 'gamelist__delegate'): {
        'horizontalAlignment': 'Text.AlignLeft',
    },
    ('*', 'rating', '*'): {
        'filledPath': "'../__es_resources/star_filled.svg'",
        'unfilledPath': "'../__es_resources/star_unfilled.svg'",
        'percentage': '0.5',
        'width': '5 * height'
    },
    ('*', 'rating', 'md_rating'): {
        'percentage': 'currentGame.rating',
        'height': FONT_SIZE_SMALL,
    },
    ('*', 'datetime', '*'): {
        'readonly property string dateFormat': "'yyyy-MM-dd'",
    },
    ('*', 'text', 'md_description'): {
        'font.pixelSize': FONT_SIZE_SMALL,
        'x': '0.01 * root.width',
        'width': '0.48 * root.width',
        'height': 'root.height - y',
        'verticalAlignment': 'Text.AlignTop',
        'wrapMode': 'Text.WordWrap',
    },
    ('*', 'text', 'md_name'): {
        'x': 'root.width',
        'y': 'root.height',
    },
    ('*', 'helpsystem', '*'): {
        'x': '0.012 * root.width',
        'y': '0.9515 * root.height',
    },
}
DEFAULT_PROPS[('*', 'datetime', '*')] = {
    **DEFAULT_PROPS.get(('*', 'text', '*'), {}),
    **DEFAULT_PROPS.get(('*', 'datetime', '*'), {}),
}


def add_label_defaults():
    global DEFAULT_PROPS

    view = 'detailed'
    texts = {
        'md_name': "currentGame.title",
        'md_description': "currentGame.description",
        'md_releasedate': "Qt.formatDateTime(currentGame.release, dateFormat) || 'unknown'",  # TODO: release -> releaseDate
        'md_developer': "currentGame.developer || 'unknown'",
        'md_publisher': "currentGame.publisher || 'unknown'",
        'md_genre': "currentGame.genre || 'unknown'",
        'md_players': "Helpers.format_players(currentGame.players)",
        'md_lastplayed': "Helpers.relative_date(currentGame.lastPlayed)",
        'md_playcount': "currentGame.playCount",
        'md_lbl_rating': "'Rating: '",
        'md_lbl_releasedate': "'Released: '",
        'md_lbl_developer': "'Developer: '",
        'md_lbl_publisher': "'Publisher: '",
        'md_lbl_genre': "'Genre: '",
        'md_lbl_players': "'Players: '",
        'md_lbl_lastplayed': "'Last played: '",
        'md_lbl_playcount': "'Times played: '",
    }
    for key, text in texts.items():
        def_key = (view, RESERVED_ITEMS[view][key], key)
        DEFAULT_PROPS.setdefault(def_key, {})
        DEFAULT_PROPS[def_key]['text'] = text

    label_order = [
        'md_lbl_rating',
        'md_lbl_releasedate',
        'md_lbl_developer',
        'md_lbl_publisher',
        'md_lbl_genre',
        'md_lbl_players',
        'md_lbl_lastplayed',
        'md_lbl_playcount',
    ]
    for idx, label in enumerate(label_order):
        if idx == 0:
            label_x = '0.01 * root.width'
            label_y = '0.625 * root.height'
        elif idx == (len(label_order) / 2):
            def_key_first = (view, RESERVED_ITEMS[view][label_order[0]], label_order[0])
            label_x = '0.25 * root.width'
            label_y = DEFAULT_PROPS[def_key_first]['y']
        else:
            prev = label_order[idx - 1]
            label_x = f"{prev}.x"
            label_y = f"{prev}.y + {prev}.height"

        label_defaults = {
            'font.pixelSize': FONT_SIZE_SMALL,
            'x': label_x,
            'y': label_y,
        }
        def_key = (view, RESERVED_ITEMS[view][label], label)
        DEFAULT_PROPS[def_key] = {**DEFAULT_PROPS.get(def_key, {}), **label_defaults}

    for idx, label in enumerate(label_order):
        value = label.replace('_lbl', '')
        value_defaults = {
            'x': f"{label}.x + {label}.width",
            'y': f"{label}.y",
        }
        if value in texts:
            value_defaults['height'] = f"{label}.height"
            value_defaults['width'] = f"0.24 * root.width - {label}.width"
            value_defaults['font.pixelSize'] = f"{label}.font.pixelSize"
            value_defaults['elide'] = 'Text.ElideRight'
        if RESERVED_ITEMS[view][value] == 'rating':
            value_defaults['height'] = f"{label}.font.pixelSize"

        def_key = (view, RESERVED_ITEMS[view][value], value)
        DEFAULT_PROPS[def_key] = {**DEFAULT_PROPS.get(def_key, {}), **value_defaults}

    description_key = (view, 'text', 'md_description')
    DEFAULT_PROPS[description_key]['y'] = f'{label_order[-1]}.y + {label_order[-1]}.height + 0.01 * root.height'


add_label_defaults()


STATIC_FILES: Dict[str, str] = {
    '__components/SystemView.qml': '''
import QtQuick 2.0
import QtQuick.Window 2.2
FocusScope {
  id: root
  property alias model: logoAxis.model
  property alias currentIndex: logoAxis.currentIndex
  readonly property var g_PLATFORM_LOGOS: new Map([
    $$PLATFORM_LOGOS$$
  ])
  readonly property var g_PLATFORMS_WITH_SYSTEM_SCREEN: [
    $$PLATFORMS_WITH_SYSTEMS$$
  ]
  signal enter()
  enabled: focus
  Carousel {
    id: bgAxis
    anchors.fill: parent
    itemWidth: width
    model: root.model
    currentIndex: root.currentIndex
    highlightMoveDuration: 500
    delegate: Loader {
      width: PathView.view.width
      height: PathView.view.height
      asynchronous: true
      readonly property string sourceDir: {
        if (g_PLATFORMS_WITH_SYSTEM_SCREEN.includes(modelData.shortName)) return modelData.shortName;
        if (g_PLATFORMS_WITH_SYSTEM_SCREEN.includes('__generic')) return '__generic';
        return null;
      }
      source: (sourceDir && `../${sourceDir}/system.qml`) || 'MissingSystemView.qml'
    }
  }
  Rectangle {
    id: systemCarousel
    anchors.left: parent.left
    anchors.right: parent.right
    anchors.verticalCenter: parent.verticalCenter
    height: 0.2325 * root.height
    color: '#d8ffffff'
    Carousel {
      id: logoAxis
      focus: true
      Keys.onPressed: {
        if (!event.isAutoRepeat && api.keys.isAccept(event)) {
          event.accepted = true;
          return root.enter();
        }
      }
      anchors.fill: parent
      itemWidth: width / 3
      delegate: Item {
        readonly property bool selected: PathView.isCurrentItem
        width: 0.25 * root.width
        height: 0.155 * root.height
        scale: selected ? 1.2 : 1.0
        opacity: selected ? 1.0 : 0.5
        Behavior on scale { NumberAnimation { duration: 200 } }
        Image {
          id: logoImage
          anchors.fill: parent
          asynchronous: true
          smooth: false
          readonly property string sourceRelPath: {
            let path = g_PLATFORM_LOGOS.get(modelData.shortName);
            if (path) return path;
            path = g_PLATFORM_LOGOS.get('__generic');
            if (path) return path
                .replace('${system.name}', modelData.shortName)
                .replace('${system.theme}', modelData.shortName);
            return null;
          }
          source: (sourceRelPath && `../${sourceRelPath}`) || ''
          fillMode: Image.PreserveAspectFit
          visible: status == Image.Ready
          opacity: visible ? 1.0 : 0.0
          Behavior on opacity { NumberAnimation { duration: 120 } }
        }
        Text {
          textFormat: Text.PlainText
          id: logoText
          anchors.centerIn: parent
          color: '#000'
          text: shortName || longName
          font.pixelSize: 0.085 * Window.height
          visible: logoImage.status != Image.Loading && logoImage.status != Image.Ready
        }
      }
    }
  }
  Text {
    textFormat: Text.PlainText
    anchors.left: parent.left
    anchors.right: parent.right
    anchors.top: systemCarousel.bottom
    height: font.pixelSize * 1.75
    color: '#000'
    font.pixelSize: root.height * 0.035
    font.family: es_default.name
    text: root.model.get(root.currentIndex).games.count + " GAMES AVAILABLE"
    horizontalAlignment: Text.AlignHCenter
    verticalAlignment: Text.AlignVCenter
    Rectangle { anchors.fill: parent; color: '#ddd'; opacity: 0.847; z: -1 }
  }
}
''',
    '__components/DetailsView.qml': '''
import QtQuick 2.0
import QtQuick.Window 2.2
FocusScope {
  id: root
  property alias model: systemAxis.model
  property alias currentIndex: systemAxis.currentIndex
  readonly property var g_PLATFORMS_WITH_DETAILS_SCREEN: [
    $$PLATFORMS_WITH_DETAILS$$
  ]
  signal leave()
  Keys.onPressed: {
    if (!event.isAutoRepeat && api.keys.isCancel(event)) {
      event.accepted = true;
      return root.leave();
    }
  }
  Carousel {
    id: systemAxis
    focus: true
    anchors.fill: parent
    itemWidth: width
    delegate: Loader {
      width: systemAxis.width
      height: systemAxis.height
      asynchronous: true
      readonly property string sourceDir: {
        if (g_PLATFORMS_WITH_DETAILS_SCREEN.includes(modelData.shortName)) return modelData.shortName;
        if (g_PLATFORMS_WITH_DETAILS_SCREEN.includes('__generic')) return '__generic';
        return null;
      }
      source: (sourceDir && `../${sourceDir}/detailed.qml`) || 'MissingDetailedView.qml'
    }
  }
}
''',
    '__components/Carousel.qml': '''
import QtQuick 2.0
PathView {
  id: root
  property int itemWidth
  readonly property int pathWidth: pathItemCount * itemWidth
  signal itemSelected
  Keys.onLeftPressed: decrementCurrentIndex()
  Keys.onRightPressed: incrementCurrentIndex()
  Keys.onPressed: {
    if (!event.isAutoRepeat && api.keys.isAccept(event)) {
      event.accepted = true;
      itemSelected();
    }
  }
  snapMode: PathView.SnapOneItem
  preferredHighlightBegin: 0.5
  preferredHighlightEnd: 0.5
  pathItemCount: {
    let count = Math.ceil(width / itemWidth);
    return (count + 2 <= model.count) ? count + 2 : Math.min(count, model.count);
  }
  path: Path {
    startX: (root.width - root.pathWidth) / 2
    startY: root.height / 2
    PathLine {
      x: root.path.startX + root.pathWidth
      y: root.path.startY
    }
  }
}
''',
    # Note: small images with larger sourceSize and Tile fill didn't work well...
    '__components/RatingBar.qml': '''
import QtQuick 2.0
Item {
  id: root
  property real percentage
  property string filledPath
  property string unfilledPath
  Row {
    id: filledPart
    anchors { top: parent.top; bottom: parent.bottom; left: parent.left }
    width: root.width * percentage
    clip: true
    Repeater {
      model: 5
      Image {
        height: root.height
        width: height
        asynchronous: true
        source: filledPath
        smooth: false
      }
    }
  }
  Row {
    id: unfilledPart
    anchors { top: parent.top; bottom: parent.bottom; left: filledPart.right; right: parent.right }
    layoutDirection: Qt.RightToLeft
    clip: true
    Repeater {
      model: 5
      Image {
        height: root.height
        width: height
        asynchronous: true
        source: unfilledPath
        smooth: false
      }
    }
  }
}
''',
    'theme.qml': '''
import QtQuick 2.0
import '__components/'
FocusScope {
  id: root
  $$FONTLIST$$
  FontLoader { id: es_default; source: '__es_resources/opensans_hebrew_condensed_regular.ttf' }
  SystemView {
    id: systemView
    focus: true
    anchors.left: parent.left
    anchors.right: parent.right
    anchors.bottom: parent.bottom
    height: parent.height
    model: api.collections
    onEnter: detailsView.focus = true
  }
  DetailsView {
    id: detailsView
    anchors.left: parent.left
    anchors.right: parent.right
    anchors.top: systemView.bottom
    height: parent.height
    model: api.collections
    currentIndex: systemView.currentIndex
    onLeave: systemView.focus = true
    onCurrentIndexChanged: if (focus) systemView.currentIndex = currentIndex
  }
  states: [
    State {
      when: detailsView.focus
      AnchorChanges {
        target: systemView
        anchors.bottom: parent.top
      }
    }
  ]
  transitions: Transition {
    AnchorAnimation {
      duration: 400
      easing.type: Easing.OutQuad
    }
  }
}
''',
    '__components/helpers.js': '''
function format_players(count) {
    return count === 1
        ? count
        : "1\u2013" + count;
}
function relative_date(datetime) {
    if (isNaN(datetime))
        return "never";

    const now = new Date();
    const elapsed_ms = now.getTime() - datetime.getTime();

    const elapsed_hours = elapsed_ms / 1000 / 60 / 60;
    if (elapsed_hours < 24 && now.getDate() === datetime.getDate())
        return "today";

    const elapsed_days = Math.round(elapsed_hours / 24);
    if (elapsed_days <= 1)
        return "yesterday";

    return elapsed_days + " days ago";
}
''',
}
