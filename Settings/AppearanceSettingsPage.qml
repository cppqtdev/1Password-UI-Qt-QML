import QtQuick 2.15
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.15
import "../GameScreens"
import "../common"
import "../Settings"
ScreenPage{
    id:root
    contentHeight: mainLayout.implicitHeight
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
                model: SideListModel{}
            }

            PrefsCheckbox{
                text:qsTr("Use device accent color")
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
                        left.borderColor = "#0570eb"
                        right.borderColor = "grey"
                    }
                }
                PrefsDensity{
                    id:right
                    borderColor: "#0570eb"
                    spacing: 2
                    onClicked: {
                        left.borderColor = "grey"
                        right.borderColor = "#0570eb"
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
