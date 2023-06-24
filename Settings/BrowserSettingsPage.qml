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
                title: qsTr("Connect with 1password in the browser")
                description: qsTr("When you connect the 1password app and browser extension, it makes it easier to unlock and fill passwords.")
            }

            PrefsButton {
                Layout.leftMargin: 8
                width: innerText.width + 40
                height: 38
                buttonText: "Get 1Password for Your Browser";
                innerText.color: "white"
                color: AppStyle.applicationColor
                hoverColor: AppStyle.applicationColor
                pressColor: AppStyle.applicationColor
                borderColor: AppStyle.applicationColor
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
