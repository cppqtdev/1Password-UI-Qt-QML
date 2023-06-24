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
        color: AppStyle.transparent
        border.width: 1
        border.color: "grey"
        anchors.fill: parent
        radius: 8
    }
    contentItem: Pane{
        anchors.fill: parent
        padding: 0
        background: Rectangle{
            radius: 8
            anchors.fill: parent
            color: AppStyle.transparent
        }

        ColumnLayout{
            anchors.fill: parent
            spacing: 0
            /* top left, top right rounded corners */
            RoundedRectangle {
                Layout.leftMargin: 1
                Layout.rightMargin: 1
                Layout.topMargin: 1
                width: root.width; height: root.height * 0.66
                color: iconRectColor
                radius: 8
                radiusCorners: Qt.AlignLeft | Qt.AlignRight | Qt.AlignTop

                Label{
                    text: iconRectIcon
                    font.family: FontStyle.getContentFont.name
                    font.pixelSize:  AppStyle.display3
                    font.bold: Font.Normal
                    font.weight: Font.Normal
                    anchors.centerIn: parent
                }
            }
            /* bottom left, bottom right rounded corners */
            RoundedRectangle {
                Layout.leftMargin: 1
                Layout.rightMargin: 1
                Layout.bottomMargin: 1
                width: root.width; height: root.height * 0.33
                color: root.hovered ? AppTheme.systemColor ? AppStyle.systemColorLighter : AppStyle.appColorLighter :  AppStyle.transparent
                radius: 8
                radiusCorners: Qt.AlignLeft | Qt.AlignRight | Qt.AlignBottom
                ColumnLayout{
                    anchors.fill: parent
                    spacing: 2
                    Label {
                        Layout.topMargin: 5
                        Layout.leftMargin: 10
                        Layout.rightMargin: 10
                        opacity: 0.87
                        text: name
                        font.pixelSize: AppStyle.t1
                        isBold: true
                        Layout.fillWidth: true
                        verticalAlignment: Image.AlignVCenter
                        Layout.alignment: Qt.AlignVCenter
                        color: AppStyle.textColor
                    }

                    Label {
                        Layout.leftMargin: 10
                        Layout.rightMargin: 10
                        Layout.bottomMargin: 5
                        opacity: 0.87
                        font.pixelSize: 10
                        text: description
                        Layout.fillWidth: true
                        verticalAlignment: Image.AlignVCenter
                        Layout.alignment: Qt.AlignVCenter
                        color: AppStyle.textColor
                    }
                }
            }
        }
    }
}
