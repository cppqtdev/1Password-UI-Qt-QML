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
                label:qsTr("Release channel :")
                model: SideListModel{}
            }

            PrefsSettingsHeader{
                isBold: false
                Layout.alignment: Qt.AlignLeft
                text:qsTr("Betas and Nighlies are published more often. They include less-tested features and improvements.")
            }


            PrefsCheckbox{
                text: qsTr("Install update automatically")
            }

            LablePrefsComboBox{
                label:qsTr("Language :")
                model: SideListModel{}
            }

            PrefsCheckboxLable{
                title: qsTr("Show debugging tools")
                description: qsTr("Extra menu option to copy item JSON and UUID.")
            }

            PrefsCheckboxLable{
                title: qsTr("Show auto-saved web details")
                description: qsTr("These were auto-saved when item was created and are likely redundant.")
            }
            PrefsCheckboxLable{
                title: qsTr("Use Hardware Acceleration")
                description: qsTr("Turn this off if you're experiencing visual performace issue.")
            }
            PrefsCheckbox{
                text: qsTr("Keep item detail windows on top")
            }
            PrefsCheckboxLable{
                title: qsTr("Auto-detect network settings")
                description: qsTr("Turn this off if you have a proxy,but need to connect to a direct network connection.")
            }

            PrefsButton{
                Layout.leftMargin: 8
                width: innerText.width + 40
                height: 38
                buttonText: "Send Diagnostics";
                innerText.color: "#0570eb"
                color: "transparent"
                hoverColor: "transparent"
                pressColor: "transparent"
                borderColor:"#0570eb"
                fontSize: 12
                borderWidth: 1
                borderRadius: 8
                onClicked: {
                }
            }

            Item{
                Layout.fillWidth: true
                height: 10
            }

        }

    }
}
