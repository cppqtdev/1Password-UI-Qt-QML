import QtQuick 2.9
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3

import "../common"
import "../"
import AppStyle 1.0
import FontStyle 1.0

Rectangle{
    id:root
    signal clicked()
    property string borderColor: "grey"
    property string backgroundColor: AppTheme.darkTheme ? "#404040" : AppStyle.background
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
                color: root.backgroundColor
                border.width: 0.5
                border.color:"grey"
            }
            Label {
                opacity: 0.87
                text:qsTr("Aa")
                font.weight: Font.Medium
                Layout.alignment: Qt.AlignLeft
            }
        }

        Rectangle{
            width: parent.width
            height: 1
            color: "grey"
        }

        RowLayout{
            Rectangle {
                implicitWidth: 15
                implicitHeight: 15
                radius: 5
                color: root.backgroundColor
                border.width: 0.5
                border.color:"grey"
            }
            Label {
                opacity: 0.87
                text:qsTr("Aa")
                font.weight: Font.Medium
                Layout.alignment: Qt.AlignLeft
            }
        }
        Rectangle{
            width: parent.width
            height: 1
            color: "grey"
        }

        RowLayout{
            Rectangle {
                implicitWidth: 15
                implicitHeight: 15
                radius: 5
                color: root.backgroundColor
                border.width: 0.5
                border.color:"grey"
            }
            Label {
                opacity: 0.87
                text:qsTr("Aa")
                font.weight: Font.Medium
                Layout.alignment: Qt.AlignLeft
            }
        }

    }
    MouseArea{
        anchors.fill: parent
        onClicked:root.clicked()
    }
}

