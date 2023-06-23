import QtQuick 2.9
import QtQuick.Controls 2.5 as T

import "../common"
import AppStyle 1.0
import FontStyle 1.0
T.Label{
    property bool isBold: false
    color: AppStyle.textColor
    wrapMode: Text.WrapAtWordBoundaryOrAnywhere
    font.family: FontStyle.getContentFont.name
    font.pixelSize: isBold ? AppStyle.h3 : AppStyle.t1
    font.bold: isBold ? Font.Bold : Font.Normal
    font.weight: isBold ? Font.Bold : Font.Normal
    elide: Text.ElideRight
}
