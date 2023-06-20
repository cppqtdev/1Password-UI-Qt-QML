import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Styles 1.4

CheckBox {
    id: control
    checked: true
    font.pointSize: 12
    spacing: 15
    contentItem:Label{
        width: control.width
        anchors.rightMargin: 10
        leftPadding: indicatorRect.implicitWidth + control.spacing
        text: control.text
        verticalAlignment: Text.AlignVCenter
        wrapMode: Text.WrapAtWordBoundaryOrAnywhere
        font: control.font
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
            font.pointSize: 10
            font.bold: true
            anchors.centerIn: parent
            bottomInset: 2
        }
    }
}
