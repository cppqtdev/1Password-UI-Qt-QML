import QtQuick 2.9
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.5
import "../"
import AppStyle 1.0
import FontStyle 1.0
RowLayout {
    id:root
    property bool isBold: false
    property string label: "System Theme :"
    property var model: null
    Layout.fillWidth: true
    spacing: 10
    Label {
        width: parent.width * 0.50
        wrapMode: Text.WrapAtWordBoundaryOrAnywhere
        opacity: 0.87
        text:label
        font.family: FontStyle.getContentFont.name
        font.pixelSize: isBold ? AppStyle.t1 : AppStyle.t1
        font.bold: isBold ? Font.Bold : Font.Normal
        font.weight: isBold ? Font.Bold : Font.Normal
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
