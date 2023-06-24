import QtQuick 2.15
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3

import "../common"
import FontStyle 1.0
import AppStyle 1.0

ItemDelegate {
    id:root
    property string iconRectColor: "#5fc4dc"
    property string iconRectIcon: "💻"
    property bool textColorWhite: false
    highlighted: ListView.isCurrentItem
    height: 50
    hoverEnabled: true
    focus: true

    background: Rectangle{
        color: root.hovered ? root.highlighted ?  AppStyle.transparent : AppTheme.systemColor ? AppStyle.systemColorLighter : AppStyle.appColorLighter : AppStyle.transparent
        anchors.fill: parent
        radius: 8
    }

    RowLayout {
        Layout.alignment: Qt.AlignVCenter
        width: parent.width
        height: parent.height
        anchors.fill: parent
        spacing: 10
        Layout.leftMargin: 10
        Layout.rightMargin: 10

        Rectangle{
            width: parent.height * 0.7
            height: parent.height * 0.7
            color: iconRectColor
            Layout.alignment: Qt.AlignVCenter
            Layout.leftMargin: 10
            radius: 8

            Label{
                text: iconRectIcon
                font.family: FontStyle.getContentFont.name
                font.pixelSize:  AppStyle.t1
                font.bold: Font.Normal
                font.weight: Font.Normal
                anchors.centerIn: parent
            }
        }

        Label {
            opacity: 0.87
            text: name
            Layout.fillWidth: true
            font.family: FontStyle.getContentFont.name
            font.pixelSize:  AppStyle.t1
            font.bold: Font.Normal
            font.weight: Font.Normal
            verticalAlignment: Image.AlignVCenter
            Layout.alignment: Qt.AlignVCenter
            color: textColorWhite ? "#FFFFFF" : root.highlighted || root.hovered ? "#FFFFFF" : AppStyle.textColor
        }
    }
}
