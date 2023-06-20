import QtQuick 2.9
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.5

RowLayout {
    id:root
    property string label: "System Theme :"
    property var model: null
    Layout.fillWidth: true
    spacing: 10
    Label {
        width: parent.width * 0.50
        wrapMode: Text.WrapAtWordBoundaryOrAnywhere
        opacity: 0.87
        font.pointSize: 12
        text:label
        font.weight: Font.Medium
        verticalAlignment: Text.AlignVCenter
        Layout.alignment: Qt.AlignVCenter
        color: "black"
        elide: Text.ElideRight
        Layout.leftMargin: 10
    }

    PrefsComboBoxLabel{
        model: root.model
    }
}
