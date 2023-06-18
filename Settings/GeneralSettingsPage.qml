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

            PrefsCheckboxLable{
                title: qsTr("Keep 1Password in the notification area")
                description: qsTr("1Password will be available in the notification area even when the main window in closed.").arg("<a href='https://www.example.com'>Click me!</a>")
            }
            LablePrefsComboBox{
                label:qsTr("Click the icon to")
                model: SideListModel{}
            }
            PrefsCheckboxLable{
                title: qsTr("Format secure notes using Markdown")
                description: qsTr("%1").arg("<a href='https://www.example.com'>Learn more about using Markdown.</a>")
            }
            Label {
                opacity: 0.87
                font.pointSize: 14
                text:qsTr("Default Vault")
                font.weight: Font.Medium
                font.bold: true
                Layout.alignment: Qt.AlignLeft
                color: "black"
                elide: Text.ElideRight
                Layout.leftMargin: 10
            }

            LablePrefsComboBox{
                label:qsTr("Save new item in :")
                model: SideListModel{}
            }

            Label {
                opacity: 0.87
                font.pointSize: 10
                text:qsTr("Set a default location for saving new items on this device , or let 1password make a suggestion.")
                font.weight: Font.Medium
                Layout.alignment: Qt.AlignLeft
                color: "black"
                elide: Text.ElideRight
                Layout.leftMargin: 10
            }
            Label {
                opacity: 0.87
                font.pointSize: 14
                text:qsTr("Keyboard Shortcuts")
                font.weight: Font.Medium
                font.bold: true
                Layout.alignment: Qt.AlignLeft
                color: "black"
                elide: Text.ElideRight
                Layout.leftMargin: 10
            }

            RowLayout{
                Layout.fillWidth: true
                Label {
                    Layout.fillWidth: true
                    opacity: 0.87
                    font.pointSize: 12
                    text:qsTr("Show 1Password :")
                    font.weight: Font.Medium
                    Layout.alignment: Qt.AlignLeft
                    color: "black"
                    elide: Text.ElideRight
                    Layout.leftMargin: 10
                }
                PrefsTextField{
                    Layout.alignment: Qt.AlignRight
                    Layout.rightMargin: 10
                    placeholderText:qsTr("Enter shortcut")
                }
            }
            RowLayout{
                Layout.fillWidth: true
                Label {
                    Layout.fillWidth: true
                    opacity: 0.87
                    font.pointSize: 12
                    text:qsTr("Show Quick Access :")
                    font.weight: Font.Medium
                    Layout.alignment: Qt.AlignLeft
                    color: "black"
                    elide: Text.ElideRight
                    Layout.leftMargin: 10
                }
                PrefsTextField{
                    Layout.alignment: Qt.AlignRight
                    Layout.rightMargin: 10
                    placeholderText:qsTr("Enter shortcut")
                }
            }
            RowLayout{
                Layout.fillWidth: true
                Label {
                    Layout.fillWidth: true
                    opacity: 0.87
                    font.pointSize: 12
                    text:qsTr("Lock 1Password :")
                    font.weight: Font.Medium
                    Layout.alignment: Qt.AlignLeft
                    color: "black"
                    elide: Text.ElideRight
                    Layout.leftMargin: 10
                }
                PrefsTextField{
                    Layout.alignment: Qt.AlignRight
                    Layout.rightMargin: 10
                    placeholderText:qsTr("Enter shortcut")
                }
            }
            RowLayout{
                Layout.fillWidth: true
                Label {
                    Layout.fillWidth: true
                    opacity: 0.87
                    font.pointSize: 12
                    text:qsTr("AutoFill :")
                    font.weight: Font.Medium
                    Layout.alignment: Qt.AlignLeft
                    color: "black"
                    elide: Text.ElideRight
                    Layout.leftMargin: 10
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

            //        PrefsComboBox{
            //            model: SideListModel{}//["Adesh","Kabir","Raj","Adesh","Kabir","Raj","Adesh","Kabir","Raj"]
            //        }
            //        PrefsCheckbox{

            //        }
            //        PrefsCheckboxLable{
            //            description: qsTr("Example APP demonstrating Qt Quick Controls 2 %1").arg("<a href='https://www.example.com'>Click me!</a>")
            //        }
            //        PrefsButton
            //        {
            //            width: innerText.width + 40
            //            height: 38
            //            buttonText: "Send Diagnostics";
            //            innerText.color: "#4169E1"
            //            color: "transparent"
            //            hoverColor: "#A7C7E7"
            //            pressColor: "#A7C7E7"
            //            borderColor: "#4169E1"
            //            fontSize: 12
            //            borderWidth: 1
            //            borderRadius: 8
            //            onClicked: {
            //            }
            //        }
            //        LablePrefsComboBox{
            //            model: SideListModel{}
            //        }
            //        PrefsTextField{}
        }
    }
}
