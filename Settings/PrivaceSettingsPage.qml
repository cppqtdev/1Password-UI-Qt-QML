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
                title: qsTr("Show app and website icons")
                description: qsTr("1password will download and display site and app icons on your logins and software licenses. %1").arg("<a href='https://www.example.com'>Learn more about rich icons and your privacy.</a>")
            }

            Label {
                opacity: 0.87
                font.pointSize: 14
                text:qsTr("Watchtower")
                font.weight: Font.Medium
                font.bold: true
                Layout.alignment: Qt.AlignLeft
                color: "black"
                elide: Text.ElideRight
                Layout.leftMargin: 10
            }

            PrefsCheckboxLable{
                title: qsTr("Check for compromised websites")
                description: qsTr("Check saved websites for recent security breaches. No information about your items leaves your devce.")
            }

            PrefsCheckboxLable{
                title: qsTr("Check for vulnerable passwords")
                description: qsTr("Look up saved passwords in an online database of security exploit provided by haveibeenpwned.com. This feature may pose a small risk to people who reuse similar passwords. %1").arg("<a href='https://www.example.com'>Learn more.</a>")
            }

            PrefsCheckboxLable{
                title: qsTr("Check for two-factor authentication")
                description: qsTr("Check for login items that support two factor authentication. No information about your items leaves your device.")
            }

            Label {
                opacity: 0.87
                font.pointSize: 10
                text:qsTr("<a href='https://www.example.com'>Learn how watchtower protect your privacy.</a>")
                font.weight: Font.Medium
                font.bold: true
                Layout.alignment: Qt.AlignLeft
                color: "black"
                elide: Text.ElideRight
                Layout.leftMargin: 10
            }

            Item{
                Layout.fillWidth: true
                height: 10
            }

        }
    }
}
