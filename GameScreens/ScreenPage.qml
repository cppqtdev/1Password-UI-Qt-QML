import QtQuick 2.15
import QtQuick.Controls 2.5
Flickable {
    property var stack: StackView.view
    StackView.visible: true
    ScrollIndicator.vertical: ScrollIndicator {}
}
