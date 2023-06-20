import QtQuick 2.9
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.2

Pane {
    id: myBar
    property bool favMenuBugfix: false
    property real activeOpacity: iconFolder == "black" ?  0.87 : 1.0
    property real inactiveOpacity: iconFolder == "black" ? 0.26 : 0.56
    leftPadding: 0
    rightPadding: 0
    topPadding: 0
    height: isDarkTheme? 56 + darkDivider.height : 56
    RowLayout {
        focus: false
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: isDarkTheme? darkDivider.bottom : parent.top
        spacing: 0

        Repeater {
            model: favoritesModel
            DrawerFavoritesNavigationButton {
                id: myButton
                Layout.fillWidth: true
                height: parent.height
            }
        }
    }
}
