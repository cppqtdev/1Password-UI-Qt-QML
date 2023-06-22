import QtQuick 2.0
import QtQuick.Controls 2.0
import QtGraphicalEffects 1.0

import "../"
import FontStyle 1.0
import AppStyle 1.0

TextField {
    id: root
    property bool isBold: false
    property color checkedColor: "#D5DBDB"
    signal doubleClicked(var event)
    property real backwidth: 213
    property real backHeight: 42

    placeholderText: qsTr("Enter ")
    font.family: FontStyle.getContentFont.name
    font.pixelSize: isBold ? AppStyle.t1 : AppStyle.t1
    font.bold: isBold ? Font.Bold : Font.Normal
    font.weight: isBold ? Font.Bold : Font.Normal
    antialiasing: true
    verticalAlignment: Text.AlignVCenter
    horizontalAlignment:Text.AlignHCenter

    background: Rectangle {
        implicitWidth: backwidth
        implicitHeight: backHeight
        radius: 8
        color: root.enabled ? "transparent" : "#F4F6F6"
        border.color: root.enabled ? root.checkedColor : "#D5DBDB"
        border.width: 2
        opacity: root.enabled ? 1 : 0.7

        layer.enabled: root.hovered
        layer.effect: DropShadow {
            id: dropShadow
            transparentBorder: true
            color: root.checkedColor
            samples: 10 /*20*/
        }
    }

    cursorDelegate: Rectangle {
        width: 1.5
        height: parent.height * 0.6
        color: root.checkedColor
        visible: root.focus

        Timer {
            interval: 600
            repeat: true
            running: root.focus
            onRunningChanged: parent.visible = running
            onTriggered: parent.visible = !parent.visible
        }
    }

    onDoubleClicked: selectAll()

    onPressed: {
        _private.mouseEvent = event
        _private.isCheckDoubleClickedEvent++

        if (! _checkDoubleClickedEventTimer.running)
            _checkDoubleClickedEventTimer.restart()
    }

    /* Private */
    Item {
        id: _private
        property int isCheckDoubleClickedEvent: 0
        property var/*MouseEvent*/ mouseEvent

        Timer {
            id: _checkDoubleClickedEventTimer
            running: false
            repeat: false
            interval: 180
            onTriggered: {
                if (_private.isCheckDoubleClickedEvent >= 2) {
                    /* Double Clicked Event */
                    root.doubleClicked(_private.mouseEvent)
                }

                stop()
                _private.isCheckDoubleClickedEvent = 0
            }
        }
    }
}
