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

            PrefsSettingsHeader{
                text: qsTr("SSH Agent")
            }

            PrefsSettingsHeader{
                isBold: false
                text: qsTr("SSH agent runs in the background and allow you to use SSH with keys from your Private vault.")
            }

            PrefsButton {
                Layout.leftMargin: 8
                width: innerText.width + 40
                height: 38
                buttonText: "Set Up SSH Agent ...";
                innerText.color: "white"
                color: "#0570eb"
                hoverColor: "#0570eb"
                pressColor: "#0570eb"
                borderColor:"#0570eb"
                fontSize: 12
                borderWidth: 1
                borderRadius: 8
                onClicked: {
                }
            }
            PrefsSettingsHeader{
                isBold: false
                text: qsTr("%1").arg("<a href='https://www.example.com'>Learn more about the 1Password SSH Agent.</a>")
            }
            PrefsSettingsHeader{
                text: qsTr("Command-Line interface (CLI)")
            }

            PrefsCheckboxLable{
                title: qsTr("Connect With 1Password CLI")
                description: qsTr("Get faster access to 1Password on the command line. %1").arg("<a href='https://www.example.com'>Learn more.</a>")
            }

            Item{
                Layout.fillWidth: true
                height: 10
            }

        }
    }
}
