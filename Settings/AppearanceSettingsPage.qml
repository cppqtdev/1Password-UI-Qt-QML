import QtQuick 2.15
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.15
import "../GameScreens"
import "../common"
import "../Settings"

import "../"
import AppStyle 1.0
import FontStyle 1.0
ScreenPage{
    id:root
    contentHeight: mainLayout.implicitHeight

    ListModel{
        id:themeModel
        ListElement {
            name: "System"
        }
        ListElement {
            name: "Light"
        }
        ListElement {
            name: "Dark"
        }
    }

    Pane {
        anchors.fill: parent
        clip: true
        background: Rectangle{
            anchors.fill: parent
            color: "transparent"
        }

        ColumnLayout{
            id: mainLayout
            anchors.left: parent.left
            anchors.right: parent.right
            spacing: 20

            LablePrefsComboBox{
                label:qsTr("Theme :")
                model: themeModel
                currentIndex: 0
                onCurrentIndexChanged: {
                    if(currentIndex === 0){
                        //System Theme
                    }else if(currentIndex === 1){
                        AppTheme.swapThemePalette()
                        // Light Theme
                    }else{
                        AppTheme.swapThemePalette()
                        //Dark Theme
                    }
                }
            }

            PrefsCheckbox{
                text:qsTr("Use device accent color")
                checked: AppTheme.systemColor
                onCheckedChanged: {
                    AppTheme.systemColor = checked
                }
            }

            PrefsSettingsHeader{
                text: qsTr("Density")
            }

            RowLayout{
                spacing: 30
                Layout.leftMargin: 5
                PrefsDensity{
                    id:left
                    spacing: 6
                    onClicked: {
                        left.borderColor = AppStyle.applicationColor
                        right.borderColor = "grey"
                    }
                }
                PrefsDensity{
                    id:right
                    borderColor: AppStyle.applicationColor
                    spacing: 2
                    onClicked: {
                        left.borderColor = "grey"
                        right.borderColor = AppStyle.applicationColor
                    }
                }
            }

            PrefsSettingsHeader{
                text: qsTr("Interface Zoom")
            }

            // Iterface increase
            PrefsSpinBox {
                id: spinBox
                Layout.leftMargin: 5
                width: 100
                height: 30
                minimumValue: 0
                maximumValue: 100
            }

            PrefsSettingsHeader{
                text: qsTr("Always Show in Sidebar")
            }

            PrefsCheckbox{
                text:qsTr("Categories")
            }
            PrefsCheckbox{
                text:qsTr("Tags")
            }

            Item{
                Layout.fillWidth: true
                height: 10
            }
        }
    }
}
