import QtQuick 2.9
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3

import "../common"
import AppStyle 1.0
import FontStyle 1.0

ComboBox {
    id: root
    property color checkedColor: AppStyle.sideBarDarkColor
    property bool isBold: false
    delegate:ItemDelegate {
        id:itemDelegate
        property string iconRectColor: iconColor ? iconColor : ""
        property string iconRectIcon: iconName ? iconName : ""

        width: root.width * 1.2
        height: 40
        hoverEnabled: true
        focus: true

        background: Rectangle{
            color: itemDelegate.hovered ? AppStyle.applicationColor : AppStyle.transparent
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
                id:iconImageRect
                visible:iconRectIcon
                width: parent.height * 0.6
                height: parent.height * 0.6
                color: iconRectColor
                Layout.alignment: Qt.AlignVCenter
                Layout.leftMargin: 10
                radius: 6

                Label{
                    text: iconRectIcon
                    font.family: FontStyle.getContentFont.name
                    font.pixelSize: isBold ? AppStyle.t1 : AppStyle.t1
                    font.bold: isBold ? Font.Bold : Font.Normal
                    font.weight: isBold ? Font.Bold : Font.Normal
                    anchors.centerIn: parent
                }
            }

            Label {
                opacity: 0.87
                text: name
                color: itemDelegate.hovered ? "white" : AppStyle.textColor
                Layout.fillWidth: true
                font.family: FontStyle.getContentFont.name
                font.pixelSize: isBold ? AppStyle.t1 : AppStyle.t1
                font.bold: isBold ? Font.Bold : Font.Normal
                font.weight: isBold ? Font.Bold : Font.Normal
                verticalAlignment: Image.AlignVCenter
                Layout.alignment: Qt.AlignVCenter
                Layout.leftMargin: iconImageRect.visible ? 0 : 10
            }

            Label {
                opacity: 0.87
                text: "✅"
                visible: root.currentIndex == index
                Layout.fillWidth: true
                font.family: FontStyle.getContentFont.name
                font.pixelSize: isBold ? AppStyle.t1 : AppStyle.t1
                font.bold: isBold ? Font.Bold : Font.Normal
                font.weight: isBold ? Font.Bold : Font.Normal
                verticalAlignment: Image.AlignVCenter
                horizontalAlignment: Image.AlignRight
                Layout.alignment: Qt.AlignVCenter
                Layout.rightMargin: 10
            }
        }

    }

    indicator: Canvas {
        id: canvas
        x: root.width - width - 10
        y: (root.availableHeight - height) / 2
        width: 12
        height: 8
        contextType: "2d"

        Connections {
            target: root
            function onPressedChanged(){
                canvas.requestPaint()
            }
        }

        onPaint: {
            context.reset();
            context.moveTo(0, 0);
            context.lineTo(width, 0);
            context.lineTo(width / 2, height);
            context.closePath();
            context.fillStyle = AppTheme.darkTheme ? "white" : "black"
            context.fill();
        }
    }

    contentItem: Item {
        width: root.background.width - root.indicator.width - 10
        height: root.background.height

        RowLayout {
            anchors.fill: parent
            spacing: 10
            Rectangle{
                id:iconRect
                visible: model.get(currentIndex).iconName ? true : false
                width: parent.height * 0.6
                height: parent.height * 0.6
                color: model.get(currentIndex).iconColor
                Layout.alignment: Qt.AlignVCenter
                Layout.leftMargin: 5
                radius: 6

                Label{
                    text: model.get(currentIndex).iconName
                    font.family: FontStyle.getContentFont.name
                    font.pixelSize: isBold ? AppStyle.t1 : AppStyle.t1
                    font.bold: isBold ? Font.Bold : Font.Normal
                    font.weight: isBold ? Font.Bold : Font.Normal
                    anchors.centerIn: parent
                }
            }

            Label {
                opacity: 0.87
                text: model.get(currentIndex).name
                Layout.fillWidth: true
                font.family: FontStyle.getContentFont.name
                font.pixelSize: isBold ? AppStyle.t1 : AppStyle.t1
                font.bold: isBold ? Font.Bold : Font.Normal
                font.weight: isBold ? Font.Bold : Font.Normal
                verticalAlignment: Image.AlignVCenter
                Layout.alignment: Qt.AlignVCenter
                elide: Text.ElideRight
                Layout.leftMargin:iconRect.visible ? 0 : 10
            }
        }

    }

    background: Rectangle {
        implicitWidth: 200
        implicitHeight: 41
        color: root.down ? Qt.darker(root.checkedColor, 1.2) : root.checkedColor
        radius: 6
        border.width: 0.6
        border.color: "grey"
    }

    popup: Popup {
        y: root.height - 1
        width: root.width * 1.3
        implicitHeight: contentItem.implicitHeight > 250 ? 250 : contentItem.implicitHeight
        padding: 4
        contentItem: ListView {
            leftMargin: 5
            implicitHeight: contentHeight
            keyNavigationEnabled: true
            model: root.popup.visible ? root.delegateModel : null
            clip: true
            focus: true
            currentIndex: root.highlightedIndex
        }

        background: Rectangle {
            anchors.fill: parent
            color: AppStyle.sideBarDarkColor
            radius: 6
            border.width: 0.6
            border.color: "grey"
            clip: true
        }
    }
}
