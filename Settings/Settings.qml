import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.3

import "../GameScreens"
import "../"
import AppStyle 1.0
import FontStyle 1.0

ApplicationWindow {
    id:root
    visible: true
    width: 1000
    height: 750
    minimumWidth: 1000
    maximumWidth: 1000
    minimumHeight: 750
    maximumHeight: 750
    flags: Qt.Dialog// Qt.WindowMaximizeButtonHint || Qt.MinimumSize
    title: "Settings"
    color: AppStyle.background

    Component{
        id:generalSettings
        GeneralSettingsPage{}
    }

    Component{
        id:appearanceSettings
        AppearanceSettingsPage{}
    }

    Component{
        id:securitySettings
        SecuritySettingsPage{}
    }
    Component{
        id:privaceSettings
        PrivaceSettingsPage{}
    }
    Component{
        id:browserSettings
        BrowserSettingsPage{}
    }
    Component{
        id:advancedSettings
        AdvancedSettingsPage{}
    }
    Component{
        id:developerSettings
        DeveloperSettingsPage{}
    }
    Component{
        id:aboutSettings
        AboutPage{}
    }

    function switchPage(index){
        switch(index){
        case 0:
            mainStack.replace(null,generalSettings)
            break;
        case 1:
            mainStack.replace(null,appearanceSettings)
            break;
        case 2:
            mainStack.replace(null,securitySettings)
            break;
        case 3:
            mainStack.replace(null,privaceSettings)
            break;
        case 4:
            mainStack.replace(null,browserSettings)
            break;
        case 5:
            mainStack.replace(null,advancedSettings)
            break;
        case 6:
            mainStack.replace(null,developerSettings)
            break;
        case 7:
            mainStack.replace(null,aboutSettings)
            break;
        }
    }

    SplitView {
        id: splitView
        anchors.fill: parent
        orientation: Qt.Horizontal

        handle: Item {
            implicitWidth: 3
            height: parent.height
            MouseArea {
                id:mouseRegion
                anchors.fill: parent
                hoverEnabled: true
                onHoveredChanged: {
                    if(containsMouse){
                        colorLayer.color = AppStyle.applicationColor
                    }else{
                        colorLayer.color = mainRect.color
                    }
                }
                Rectangle {
                    id:colorLayer
                    anchors.fill: parent
                    color: mainRect.color
                }
            }
        }

        Rectangle {
            id: mainRect
            color: AppStyle.sideBarDarkColor
            SplitView.preferredWidth: 250
            SplitView.maximumWidth: 300
            SplitView.minimumWidth: 250

            ListView{
                id:listItemView
                anchors.fill: parent
                anchors.margins: 10
                focus: true
                highlightFollowsCurrentItem :true
                onCurrentIndexChanged: {
                    root.switchPage(currentIndex)
                }

                highlight: Rectangle
                {
                    width: parent.height * 0.7
                    height: parent.height * 0.7
                    Layout.alignment: Qt.AlignVCenter
                    Layout.leftMargin: 10
                    radius: 8
                    color: AppStyle.applicationColor
                    focus: true

                    Rectangle{
                        height: parent.height * 0.59
                        width: 5
                        color:"yellow"
                        anchors.rightMargin: 5
                        anchors.verticalCenter: parent.verticalCenter
                        Layout.alignment: Qt.AlignRight
                        radius: 4
                    }
                }

                model: SideListModel{}
                delegate: SideListDelegate{
                    width: listItemView.width
                    iconRectIcon: iconName
                    iconRectColor: iconColor
                    onClicked:{
                        ListView.view.currentIndex = index
                        root.switchPage(index)
                    }
                }
            }
        }

        Rectangle {
            id: collapsibleRect
            SplitView.fillWidth: true
            color: AppStyle.transparent
            clip: true
            Loader{
                id:mainLoader
                anchors.fill: parent
                StackView{
                    id:mainStack
                    anchors.fill: parent
                    initialItem: GeneralSettingsPage{
                    }
                }
            }
        }
    }
}
