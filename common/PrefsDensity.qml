import QtQuick 2.9
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3
Rectangle{
    id:root
    signal clicked()
    property string borderColor: "grey"
    property int spacing: 5
    width: 70
    height: 80
    radius: 8
    color: "transparent"
    border.width: 1
    border.color: borderColor
    clip: true

    ColumnLayout{
        anchors.margins: 5
        anchors.fill: parent
        spacing: root.spacing
        RowLayout{
            Rectangle {
                implicitWidth: 15
                implicitHeight: 15
                radius: 5
                color: "#dde4de"
                border.width: 0.5
                border.color:"grey"
            }
            Label {
                opacity: 0.87
                font.pointSize: 8
                text:qsTr("Aa")
                font.weight: Font.Medium
                font.bold: true
                Layout.alignment: Qt.AlignLeft
                color: "black"
            }
        }

        Rectangle{
            width: parent.width
            height: 1
            color: "#dde4de"
        }

        RowLayout{
            Rectangle {
                implicitWidth: 15
                implicitHeight: 15
                radius: 5
                color: "#dde4de"
                border.width: 0.5
                border.color:"grey"
            }
            Label {
                opacity: 0.87
                font.pointSize: 8
                text:qsTr("Aa")
                font.weight: Font.Medium
                font.bold: true
                Layout.alignment: Qt.AlignLeft
                color: "black"
            }
        }
        Rectangle{
            width: parent.width
            height: 1
            color: "#dde4de"
        }

        RowLayout{
            Rectangle {
                implicitWidth: 15
                implicitHeight: 15
                radius: 5
                color: "#dde4de"
                border.width: 0.5
                border.color:"grey"
            }
            Label {
                opacity: 0.87
                font.pointSize: 8
                text:qsTr("Aa")
                font.weight: Font.Medium
                font.bold: true
                Layout.alignment: Qt.AlignLeft
                color: "black"
            }
        }

    }
    MouseArea{
        anchors.fill: parent
        onClicked:root.clicked()
    }
}

