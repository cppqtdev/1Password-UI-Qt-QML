import QtQuick 2.15
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3

ItemDelegate {
    id:root
    property string iconRectColor: "#5fc4dc"
    property string iconRectIcon: "💻"
    property string title: ""
    property string subTitle: ""
    property string delegateColor: "#ff4030"
    highlighted: false
    height: 50
    hoverEnabled: true
    focus: true

    background: Rectangle{
        color: root.hovered ? root.highlighted ?  "transparent" : "#bdc9c0" :  delegateColor
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
            width: parent.height * 0.7
            height: parent.height * 0.7
            color: iconRectColor
            Layout.alignment: Qt.AlignVCenter
            Layout.leftMargin: 10
            radius: 8

            Label{
                text: iconRectIcon
                font.pointSize: 12
                anchors.centerIn: parent
            }
        }
        ColumnLayout{
            spacing: 2
            Layout.alignment: Qt.AlignVCenter
            Label {
                opacity: 0.87
                font.pointSize: 10
                text: title
                Layout.fillWidth: true
                font.weight: Font.Medium
                color: "white"
            }
            Label {
                visible: subTitle
                opacity: 0.87
                font.pointSize: 8
                text: subTitle
                Layout.fillWidth: true
                font.weight: Font.Medium
                color: "white"
            }
        }
    }
}
