import QtQuick 2.15
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.15
import "../GameScreens"
import "../common"
import "../Settings"
import FontStyle 1.0
import AppStyle 1.0
ScreenPage{
    id:root
    contentHeight: mainLayout.implicitHeight
    property bool isBold: false
    Pane {
        anchors.fill: parent
        clip: true
        background: Rectangle{
            anchors.fill: parent
            color: AppStyle.transparent
        }

        ColumnLayout{
            id: mainLayout
            anchors.left: parent.left
            anchors.right: parent.right
            spacing: 20

            PrefsCheckboxLable{
                title: qsTr("Keep 1Password in the notification area")
                description: qsTr("1Password will be available in the notification area even when the main window in closed.")
            }
            LablePrefsComboBox{
                label:qsTr("Click the icon to")
                model: SideListModel{}
            }
            PrefsCheckboxLable{
                title: qsTr("Format secure notes using Markdown")
                description: qsTr("%1").arg("<a href='https://www.example.com'>Learn more about using Markdown.</a>")
            }

            PrefsSettingsHeader{
                text: qsTr("Default Vault")
            }

            LablePrefsComboBox{
                label:qsTr("Save new item in :")
                model: SideListModel{}
            }

            PrefsSettingsHeader{
                isBold: false
                text: qsTr("Set a default location for saving new items on this device , or let 1password make a suggestion.")
            }

            PrefsSettingsHeader{
                text: qsTr("Keyboard Shortcuts")
            }

            RowLayout{
                Layout.fillWidth: true
                PrefsSettingsHeader{
                    isBold: false
                    text: qsTr("Show 1Password :")
                }

                PrefsTextField{
                    Layout.alignment: Qt.AlignRight
                    Layout.rightMargin: 10
                    placeholderText:qsTr("Enter shortcut")
                }
            }
            RowLayout{
                Layout.fillWidth: true
                PrefsSettingsHeader{
                    isBold: false
                    text: qsTr("Show Quick Access :")
                }

                PrefsTextField{
                    Layout.alignment: Qt.AlignRight
                    Layout.rightMargin: 10
                    placeholderText:qsTr("Enter shortcut")
                }
            }
            RowLayout{
                Layout.fillWidth: true
                PrefsSettingsHeader{
                    isBold: false
                    text: qsTr("Lock 1Password :")
                }

                PrefsTextField{
                    Layout.alignment: Qt.AlignRight
                    Layout.rightMargin: 10
                    placeholderText:qsTr("Enter shortcut")
                }
            }
            RowLayout{
                Layout.fillWidth: true
                PrefsSettingsHeader{
                    isBold: false
                    text: qsTr("AutoFill :")
                }

                PrefsTextField{
                    Layout.alignment: Qt.AlignRight
                    Layout.rightMargin: 10
                    placeholderText:qsTr("Enter shortcut")
                }
            }

            Item{
                Layout.fillWidth: true
                height: 10
            }
        }

    }
}
