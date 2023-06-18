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

            Label {
                opacity: 0.87
                font.pointSize: 14
                text:qsTr("SSH Agent")
                font.weight: Font.Medium
                font.bold: true
                Layout.alignment: Qt.AlignLeft
                color: "black"
                elide: Text.ElideRight
                Layout.leftMargin: 10
            }

            Label {
                opacity: 0.87
                font.pointSize: 10
                text:qsTr("SSH agent runs in the background and allow you to use SSH with keys from your Private vault.")
                font.weight: Font.Medium
                Layout.alignment: Qt.AlignLeft
                color: "black"
                elide: Text.ElideRight
                Layout.leftMargin: 10
            }

            PrefsButton
            {
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
            Label {
                opacity: 0.87
                font.pointSize: 10
                text:qsTr("%1").arg("<a href='https://www.example.com'>Learn more about the 1Password SSH Agent.</a>")
                font.weight: Font.Medium
                Layout.alignment: Qt.AlignLeft
                color: "black"
                elide: Text.ElideRight
                Layout.leftMargin: 10
            }

            Label {
                opacity: 0.87
                font.pointSize: 14
                text:qsTr("Command-Line interface (CLI)")
                font.weight: Font.Medium
                font.bold: true
                Layout.alignment: Qt.AlignLeft
                color: "black"
                elide: Text.ElideRight
                Layout.leftMargin: 10
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
