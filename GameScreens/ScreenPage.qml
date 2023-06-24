import QtQuick 2.15
import QtQuick.Controls 2.5
Flickable {
    property var stack: StackView.view
    property alias position: scrollIndicator.position
    StackView.visible: true
    ScrollIndicator.vertical: ScrollIndicator {
        id:scrollIndicator
        implicitWidth: 15
        contentItem : Rectangle{
            visible: parent.active || parent.position > 0
            width: parent.width / 2
            height: parent.height /2
            radius: 12
            color: "grey"
        }
    }
}
