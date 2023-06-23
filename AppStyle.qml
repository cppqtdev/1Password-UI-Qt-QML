pragma Singleton
import QtQuick 2.9
import QtQuick.Controls 2.5

QtObject {
    id: styleObject

    readonly property int       t1 : 14
    readonly property int       t2 : 12
    readonly property int       t3 : 10

    readonly property int       h1 : 32
    readonly property int       h2 : 24
    readonly property double    h3 : 18.72
    readonly property int       h4 : 16
    readonly property double    h5 : 13.28
    readonly property double    h6 : 10.72

    readonly property int       display1 : 96
    readonly property int       display2 : 88
    readonly property int       display3 : 72
    readonly property int       display4 : 56
    readonly property int       display5 : 40
    readonly property int       display6 : 24

    readonly property int       paragraph : 14

    readonly property int       radius : 5

    // Dark Theme Colors
    readonly property color backgroundColor: "#2d3037"
    readonly property color buttonColor: "#202227"
    readonly property color buttonPressedColor: "#6ccaf2"
    readonly property color disabledButtonColor: "#555555"
    readonly property color viewColor: "#202227"
    readonly property color delegate1Color: Qt.darker(viewColor, 1.2)
    readonly property color delegate2Color: Qt.lighter(viewColor, 1.2)
    readonly property color textColor: AppTheme.darkTheme ? "#ffffff" : "#000000"
    readonly property color textDarkColor: "#232323"
    readonly property color disabledTextColor: "#777777"
    readonly property color sliderColor: "#6ccaf2"
    readonly property color errorColor: "#ba3f62"
    readonly property color infoColor: "#3fba62"
    readonly property color sideBarDarkColor: AppTheme.darkTheme ? "#313131" : "#dde4de"
    readonly property color titleBarColor: AppTheme.darkTheme ? "#313131" : "transparent"

    // light theme colors

    readonly property color accent: "#FFFFFF";
    readonly property color pageground: "#FFFFFF";
    readonly property color background: AppTheme.darkTheme ? "#262626" : "#FFFFFF";
    readonly property color backgroundActivated: "#FFFFFF";
    readonly property color backgroundDeactivated: "#E5E5E5";
    readonly property color backgroundHovered: "#dcdcdc";
    readonly property color backgroundFocused: "#fafafa";

    readonly property color backgroundItemActivated: "#f3f4f6";
    readonly property color backgroundItemDeactivated: "#F1F1F1";
    readonly property color backgroundItemHovered: "#E3C7B7";
    readonly property color backgroundItemFocused: "#D2A992";

    readonly property color foregroundActivated: "#2f384c";
    readonly property color foregroundDeactivated: "#9097a6";
    readonly property color foregroundHovered: "#767676";
    readonly property color foregroundFocused: "#a38071";

    readonly property color borderActivated: "#E5E5E5";
    readonly property color borderDeactivated: "#D9D9DB";
    readonly property color borderHovered: "#2b303b";
    readonly property color borderFocused: "#50535a";

    readonly property color lineBorderActivated: "#f1f1f1";
    readonly property color lineBorderDeactivated: "#f1f1f1";
    readonly property color lineBorderHovered: "#f1f1f1";
    readonly property color lineBorderFocused: "#f1f1f1";

    readonly property color header: "#FFFFFF";
    readonly property color footer: "#0e121b";

    readonly property color primary: "#2b303b";
    readonly property color primaryBack: "#50535a";
    readonly property color secondry: "#3a86ff";
    readonly property color secondryBack: "#CCEEFF";
    readonly property color success: "#0cce6b";
    readonly property color successBack: "#480cce6b";
    readonly property color warning: "#ee7e0a";
    readonly property color warningBack: "#ffe8c2";
    readonly property color error: "#cc3333";
    readonly property color errorBack: "#ffcccc";

    readonly property color lightShadow: "#28555555";
    readonly property color darkShadow: "#1e2533";

    readonly property color transparent: "transparent"

    readonly property bool shadow: true;
    readonly property int duration: 200
}
