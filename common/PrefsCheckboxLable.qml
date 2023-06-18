import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.3
ColumnLayout{
    Layout.fillWidth: true
    property string title: qsTr("Format Secure Notes Using Markdown")
    property string description: qsTr("Example APP demonstrating Qt Quick Controls 2")
    spacing: 5
    CheckBox {
        id: control
        text: title
        checked: true
        font.pointSize: 12
        spacing: 15
        indicator: Rectangle {
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

    LabelSubheading {
        width: root.width
        leftPadding: control.spacing + 22 + spacing
        rightPadding: 10
        wrapMode: Text.WordWrap
        font.pointSize: control.font.pointSize - 1
        text:description
        // Open the link in a browser when clicked
        onLinkActivated: {
            Qt.openUrlExternally(link)
        }
    }
}
