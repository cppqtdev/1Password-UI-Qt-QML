import QtQuick 2.9
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.2
import "../../../common"
import "../../../Settings"
import "../../../GameScreens"
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

            PrefsSettingsHeader{
                text: qsTr("Watchtower")
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

            PrefsSettingsHeader{
                isBold: false
                text: qsTr("<a href='https://www.example.com'>Learn how watchtower protect your privacy.</a>")
            }

            Item{
                Layout.fillWidth: true
                height: 10
            }

        }

    }
    Component.onDestruction: {
        cleanup()
    }
    function init() {
        console.log(qsTr("Init done from Car"))
    }
    function cleanup() {
        console.log(qsTr("Cleanup done from Car"))
    }
}

