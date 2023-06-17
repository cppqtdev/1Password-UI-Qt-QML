import QtQuick 2.9
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.2
import QtQuick.Controls.Material 2.2
import "../../GameScreens"
StackView {
    id: navPane
    property string name: "HomeNavPane"
    initialItem: "qrc:/ScreensComponents/RightSideDrawer/pages/HomePage.qml"
    Loader {
        id: qtPageLoader
        active: true
        visible: false
    }

    function pushQtPage() {
        navPane.push(qtPageLoader.item)
    }

    Component.onDestruction: {
        cleanup()
    }

    function init() {
        console.log("INIT HomeNavPane")
    }
    function cleanup() {
        console.log("CLEANUP HomeNavPane")
    }

} // navPane
