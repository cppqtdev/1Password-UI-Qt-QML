import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Styles 1.4

import FontStyle 1.0
import AppStyle 1.0
import "../"
CheckBox {
    id: control
    property bool isBold: false
    checked: true
    spacing: 15
    contentItem:Label{
        width: control.width
        anchors.rightMargin: 10
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
