import QtQuick 2.9
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3
import "../common"
import AppStyle 1.0
import FontStyle 1.0

Label {
    width: parent.width
    property bool isBold: true
    Layout.leftMargin: 10
    Layout.fillWidth: true
    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
    opacity: 0.87
    font.family: FontStyle.getContentFont.name
    font.pixelSize: isBold ? AppStyle.h3 : AppStyle.t1
    font.bold: isBold ? Font.Bold : Font.Normal
    font.weight: isBold ? Font.Bold : Font.Normal
    elide: Text.ElideRight
}
