import QtQuick 2.15
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3

import "../GameScreens"
import "../"
import AppStyle 1.0
import FontStyle 1.0

ScreenPage {
    id:root
    contentHeight: mainLayout.implicitHeight
    property bool isBold: false
    Page {
        anchors.fill: parent
        clip: true
        background: Rectangle{
            anchors.fill: parent
            color: AppStyle.transparent
        }
        header: Rectangle{

        }

        ColumnLayout{
            id: mainLayout
            anchors.left: parent.left
            anchors.right: parent.right
            spacing: 20
        }
    }
}
