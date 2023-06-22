import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3
import QtQuick.Controls.Material 2.3
import QtQml 2.15
import "./ScreensComponents"
import "./GameScreens"
import "./ScreensComponents/LeftSideDrawer"
import "./ScreensComponents/RightSideDrawer"
import "./Settings"
import "./AddItemScreen"

import FontStyle 1.0
import AppStyle 1.0

ApplicationWindow {
    id:root
    width: 1280
    height: 750
    visible: true

    property color homeColor: "#313a41"
    property color borderColor: "#444b51"
    property color backgroundColor : "#373e44"
    property bool isLandscape: width > height

    property bool backKeyBlocked: false
    property var activationPolicy: {
        "NONE":0, "IMMEDIATELY":1, "LAZY":2, "WHILE_CURRENT":3
    }
    property color transparentColor: "transparent"

    // primary and accent properties:
    property variant primaryPalette: myApp.defaultPrimaryPalette()
    property color primaryLightColor: primaryPalette[0]
    property color primaryColor: primaryPalette[1]
    property color primaryDarkColor: primaryPalette[2]
    property color textOnPrimaryLight: primaryPalette[3]
    property color textOnPrimary: primaryPalette[4]
    property color textOnPrimaryDark: primaryPalette[5]
    property string iconOnPrimaryLightFolder: primaryPalette[6]
    property string iconOnPrimaryFolder: primaryPalette[7]
    property string iconOnPrimaryDarkFolder: primaryPalette[8]
    property variant accentPalette: myApp.defaultAccentPalette()
    property color accentColor: accentPalette[0]
    property color textOnAccent: accentPalette[1]
    property string iconOnAccentFolder: accentPalette[2]
    Material.primary: primaryColor
    Material.accent: accentColor

    // theme Dark vs Light properties:
    property variant themePalette: myApp.defaultThemePalette()
    property color dividerColor: themePalette[0]
    property color cardAndDialogBackground: themePalette[1]
    property real primaryTextOpacity: themePalette[2]
    property real secondaryTextOpacity: themePalette[3]
    property real dividerOpacity: themePalette[4]
    property real iconActiveOpacity: themePalette[5]
    property real iconInactiveOpacity: themePalette[6]
    property string iconFolder: themePalette[7]
    property int isDarkTheme: themePalette[8]
    property color flatButtonTextColor: themePalette[9]
    property color popupTextColor: themePalette[10]
    property real toolBarActiveOpacity: themePalette[11]
    property real toolBarInactiveOpacity: themePalette[12]
    property color toastColor: themePalette[13]
    property real toastOpacity: themePalette[14]

    // Material.dropShadowColor  OK for Light, but too dark for dark theme
    property color dropShadow: isDarkTheme? "#E4E4E4" : Material.dropShadowColor
    onIsDarkThemeChanged: {
        if(isDarkTheme == 1) {
            Material.theme = Material.Dark
        } else {
            Material.theme = Material.Light
        }
    }

    // font sizes - defaults from Google Material Design Guide
    property int fontSizeDisplay4: 112
    property int fontSizeDisplay3: 56
    property int fontSizeDisplay2: 45
    property int fontSizeDisplay1: 34
    property int fontSizeHeadline: 24
    property int fontSizeTitle: 20
    property int fontSizeSubheading: 16
    property int fontSizeBodyAndButton: 14 // is Default
    property int fontSizeCaption: 12
    property int fontSizeActiveNavigationButton: 14
    property int fontSizeInactiveNavigationButton: 12

    property real opacityDisplay4: secondaryTextOpacity
    property real opacityDisplay3: secondaryTextOpacity
    property real opacityDisplay2: secondaryTextOpacity
    property real opacityDisplay1: secondaryTextOpacity
    property real opacityHeadline: primaryTextOpacity
    property real opacityTitle: primaryTextOpacity
    property real opacitySubheading: primaryTextOpacity

    // body can be both: primary or secondary text
    property real opacityBodyAndButton: primaryTextOpacity
    property real opacityBodySecondary: secondaryTextOpacity
    property real opacityCaption: secondaryTextOpacity

    property var navigationModel: [
        {"type": "qrc:/ScreensComponents/RightSideDrawer/navigation/DrawerNavigationButton.qml", "name": "General", "icon": "home.png", "source": "qrc:/ScreensComponents/RightSideDrawer/navigation/HomeNavigation.qml", "showCounter":false, "showMarker":false, "a_p":1},
        {"type": "qrc:/ScreensComponents/RightSideDrawer/navigation/DrawerNavigationButton.qml", "name": "Security", "icon": "car.png", "source": "qrc:/ScreensComponents/RightSideDrawer/pages/PageOne.qml", "showCounter":true, "showMarker":false, "a_p":2},
        {"type": "qrc:/ScreensComponents/RightSideDrawer/navigation/DrawerNavigationButton.qml", "name": "Privacy", "icon": "bus.png", "source": "qrc:/ScreensComponents/RightSideDrawer/pages/PageTwo.qml", "showCounter":false, "showMarker":false, "a_p":2},
        {"type": "qrc:/ScreensComponents/RightSideDrawer/navigation/DrawerNavigationButton.qml", "name": "Advanced", "icon": "subway.png", "source": "qrc:/ScreensComponents/RightSideDrawer/pages/PageThree.qml", "showCounter":false, "showMarker":true, "a_p":3},
    ]
    property var navigationData: [
        {"counter":0, "marker":""},
        {"counter":0, "marker":""},
        {"counter":0, "marker":""},
        {"counter":0, "marker":""}
    ]
    property var favoritesModel: [0,1,2,3]
    property int navigationIndex: 0
    onNavigationIndexChanged: {
        rightDrawerLoader.source = navigationModel[navigationIndex]["source"]
    }
    property bool hideTitleBar: false
    property bool showFavorites: true
    property bool highlightActiveNavigationButton : true

    // Chance to ignore the checkbox
    property bool ignoreCheck: false

    /* With help Connections object
     * set connections with System tray class
     * */

    Connections {
        target: systemTray
        function onSignalShow() {
            root.show();
        }

        // The signal - close the application by ignoring the check-box
        function onSignalQuit() {
            ignoreCheck = true
            close();
        }

        // Minimize / maximize the window by clicking on the default system tray
        function onSignalIconActivated() {
             if(root.visibility === Window.Hidden) {
                 root.show()
             } else {
                 root.hide()
             }
        }
    }

    // Handler window closing event
    onClosing: {
        /* If the check box should not be ignored and it is active,
         * then hide the application. Otherwise, close the application
         * */
        if(ignoreCheck === false){
            close.accepted = false
            root.hide()
        } else {
            Qt.quit()
        }
    }

    AddItemDialog{
        id:addItemDialog
    }

    header: TitleBar{
        id:titlebar
        onMenuClicked: {
            drawer.open()
        }
        onHomeClicked: {
            //mainStack.pop(null)
            //addItemDialog.open()
            var component = Qt.createComponent("qrc:/AddItemScreen/AddItemDialog.qml");
            var win = component.createObject(root);
            win.show();
        }
        onHelpCliked: {
            var component = Qt.createComponent("qrc:/Settings/Settings.qml");
            var win = component.createObject(root);
            win.show();
        }
        onSettingsCliked: {
            settingsDrawer.open()
        }

        Component{
            id:settings
            Settings{

            }
        }
    }
    Loader{
        id:mainLoader
        anchors.fill: parent
        StackView{
            id:mainStack
            anchors.fill: parent
            initialItem: HomeScreen{
                anchors.fill: parent
            }
        }
    }
    //LeftSide Drawer
    PageDrawer {
        id: drawer

        iconTitle: "Qt Drawer App"
        iconSource: "qrc:/Img/Icons/hire-a-helper.svg"
        iconSubtitle: qsTr ("Version 1.0 Beta")

        actions: {
            0: function() { console.log ("Item 1 clicked!") },
            1: function() { console.log ("Item 2 clicked!") },
            2: function() { console.log ("Item 3 clicked!") },
            3: function() { console.log ("Item 4 clicked!") },
            4: function() { console.log ("Item 5 clicked!") },
            5: function() { console.log ("Item 6 clicked!") },
            7: function() { console.log ("Item 7 clicked!") },
            8: function() { console.log ("Item 8 clicked!") },

        }

        items: ListModel {
            id: pagesModel

            ListElement {
                pageTitle: qsTr ("Home")
                pageIcon: "qrc:/Img/Icons/house-user-solid.svg"
            }

            ListElement {
                pageTitle: qsTr ("Settings")
                pageIcon: "qrc:/Img/Icons/gear-solid.svg"
            }

            ListElement {
                pageTitle: qsTr ("Configuration")
                pageIcon: "qrc:/Img/Icons/gear-solid.svg"
            }

            ListElement {
                pageTitle: qsTr ("Docs")
                pageIcon: "qrc:/Img/Icons/globe-solid.svg"
            }

            ListElement {
                pageTitle: qsTr ("Help")
                pageIcon: "qrc:/Img/Icons/hire-a-helper.svg"
            }

            ListElement {
                pageTitle: qsTr ("About")
                pageIcon: "qrc:/Img/Icons/house-user-solid.svg"
            }

            ListElement {
                separator: true
            }

            ListElement {
                pageTitle: qsTr ("Our Blog")
                pageIcon: "qrc:/Img/Icons/globe-solid.svg"
            }

            ListElement {
                pageTitle: qsTr ("Follows us")
                pageIcon: "qrc:/Img/Icons/globe-solid.svg"
            }
        }
    }


    //RightSide Drawer
    Drawer{
        id:settingsDrawer
        width: parent.width*0.40
        height: root.height
        edge: Qt.RightEdge
        contentItem:Page{
            padding: 0
            anchors.fill: parent
            header:Rectangle{
                width: parent.width
                height: 40
                color: transparentColor
                Column{
                    width: parent.width
                    height: parent.height
                    Row{
                        spacing: 10
                        MainButton{
                            id:crossButton
                            sourceIcon:"qrc:/ScreensComponents/RightSideDrawer/Images/"+iconFolder+"/"+ "arrow_back.png"
                            width: 40
                            height: 40
                            buttonText: "";
                            color: "transparent"
                            hoverColor: "transparent"
                            pressColor: "transparent"
                            borderColor: "transparent"
                            fontSize: 10
                            borderWidth: 1
                            borderRadius: height/2
                            onClicked: {
                                console.log("Button Clicked !")
                                settingsDrawer.close()
                            }
                        }

                        Label {
                            font.weight: Font.Medium
                            font.pixelSize: 18
                            opacity: 0.8
                            anchors.verticalCenter: crossButton.verticalCenter
                            text: navigationModel[navigationIndex]["name"]
                        }
                    }
                    Rectangle{
                        color: "grey"
                        width: parent.width
                        height: 1
                    }
                }
            }

            Loader {
                id: rightDrawerLoader
                anchors.fill: parent
                clip: true
                sourceComponent: homePageComponent
            }

            Component {
                id: homePageComponent
                HomeNavigation{
                }
            }

            footer: Rectangle{
                width: parent.width
                height: 56
                color: transparentColor
                DrawerFavoritesNavigationBar{
                    width: parent.width
                    anchors.centerIn: parent
                }
            }
        }
    }
}
