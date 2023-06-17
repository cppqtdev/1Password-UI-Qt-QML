import QtQuick 2.12
import QtQuick.Controls 2.12

CheckBox {
    id: control
    text: qsTr("Format Secure Notes Using Markdown")
    checked: true
    font.pointSize: 12
    spacing: 15
    indicator: Rectangle {
        implicitWidth: 22
        implicitHeight: 22
        x: control.leftPadding
        y: parent.height / 2 - height / 2
        radius: 5
        color: control.checked ? "blue" : checkBoxHover.hovered ? "#dde4de" : "transparent"
        border.width: 1
        border.color: control.checked ? "blue" : "grey"
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
