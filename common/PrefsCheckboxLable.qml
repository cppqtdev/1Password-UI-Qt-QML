import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.3

import FontStyle 1.0
import AppStyle 1.0
import "../"
import "./"
ColumnLayout{
    id:root
    Layout.fillWidth: true
    property bool isBold: false
    property alias checked: control.checked
    property string title: qsTr("Format Secure Notes Using Markdown")
    property string description: qsTr("Example APP demonstrating Qt Quick Controls 2")
    spacing: 5
    CheckBox {
        id: control
        text: title
        checked: true
        spacing: 15
        contentItem:Label{
            width: root.width
            Layout.rightMargin: 10
            leftPadding: indicatorRect.implicitWidth + control.spacing
            text: control.text
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.WrapAtWordBoundaryOrAnywhere
            font.family: FontStyle.getContentFont.name
            font.pixelSize: isBold ? AppStyle.t1 : AppStyle.t1
            font.bold: isBold ? Font.Bold : Font.Normal
            font.weight: isBold ? Font.Bold : Font.Normal
        }
        indicator: Rectangle {
            id:indicatorRect
            implicitWidth: 22
            implicitHeight: 22
            x: control.leftPadding
            y: parent.height / 2 - height / 2
            radius: 5
            color: control.checked ? "#0570eb" : checkBoxHover.hovered ? "#dde4de" : "transparent"
            border.width: 1
            border.color: control.checked ? "#0570eb" : "grey"
            HoverHandler{
                id:checkBoxHover
            }

            Label{
                text: "+"
                color: "white"
                visible:control.checked
                font.family: FontStyle.getAwesomeRegular.name
                font.pixelSize: isBold ? AppStyle.t1 : AppStyle.t1
                font.bold: isBold ? Font.Bold : Font.Normal
                font.weight: isBold ? Font.Bold : Font.Normal
                anchors.centerIn: parent
                bottomInset: 2
            }
        }
    }

    Label{
        Layout.fillWidth: true
        width: root.width
        leftPadding: control.spacing + 22 + spacing
        rightPadding: 10
        wrapMode: Text.WrapAtWordBoundaryOrAnywhere
        font.family: FontStyle.getContentFont.name
        font.pixelSize: isBold ? AppStyle.t1 : AppStyle.t1
        font.bold: isBold ? Font.Bold : Font.Normal
        font.weight: isBold ? Font.Bold : Font.Normal
        text:description
        // Open the link in a browser when clicked
        onLinkActivated: {
            Qt.openUrlExternally(link)
        }
    }
}
