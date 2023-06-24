import QtQuick 2.15
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3

import "../"
import "../common"
import AppStyle 1.0
import FontStyle 1.0


ItemDelegate {
    id:root
    property string iconRectColor: "#5fc4dc"
    property string iconRectIcon: "💻"
    property bool textColorWhite: false
    property string name: ""
    highlighted: ListView.isCurrentItem
    width: 200
    height: 40
    hoverEnabled: true
    focus: true

    background: Rectangle{
        color: root.hovered ? root.highlighted ?  AppStyle.transparent : AppTheme.systemColor ? AppStyle.systemColorLighter : AppStyle.appColorLighter : AppStyle.sideBarDarkColor
        anchors.fill: parent
        radius: 8
    }
    contentItem: RowLayout {
        Layout.alignment: Qt.AlignVCenter
        anchors.verticalCenter: parent.verticalCenter
        width: parent.width
        height: parent.height
        spacing: 10
        Layout.leftMargin: 5
        Layout.rightMargin: 5

        Rectangle{
            width: parent.height * 0.8
            height: parent.height * 0.8
            color: iconRectColor
            Layout.alignment: Qt.AlignVCenter
            Layout.leftMargin: 5
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
            color: textColorWhite ? "#FFFFFF" : root.highlighted ? "#FFFFFF" : AppStyle.textColor
        }
        Item{
            Layout.fillWidth: true
        }

        Label {
            opacity: 0.87
            text: "+"
            font.family: FontStyle.getContentFont.name
            font.pixelSize:  AppStyle.h4
            font.bold: Font.Normal
            font.weight: Font.Normal
            verticalAlignment: Image.AlignVCenter
            Layout.alignment: Qt.AlignRight
            Layout.rightMargin: 5
            color: textColorWhite ? "#FFFFFF" : root.highlighted ? "#FFFFFF" : AppStyle.textColor
        }
    }
}
