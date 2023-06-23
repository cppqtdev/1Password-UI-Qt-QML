import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.3

import "./"
import "../"
import AppStyle 1.0
import FontStyle 1.0
Item {
    property int value: 100
    property int minimumValue: 75
    property int maximumValue: 175
    property string boxColor: AppTheme.darkTheme ? "#313131" : "#dde4de"

    width: 100
    height: 55

    Rectangle {
        id: background
        color: AppStyle.transparent
        anchors.fill: parent
    }

    RowLayout {
        id: row
        spacing: 0
        width: parent.width
        height: parent.height

        PrefsButton{
            width: parent.height
            height: parent.height
            buttonText: "-"
            innerText.color: AppStyle.textColor
            color: boxColor
            hoverColor: boxColor
            pressColor: boxColor
            borderColor: "grey"
            fontSize: 12
            borderWidth: 0.6
            borderRadius: 8
            onClicked: {
                if (value > minimumValue) {
                    value = value - 25
                }
            }
        }

        Rectangle{
            width: parent.width * 0.8
            height: parent.height
            radius: 12
            color: "transparent"
            Label {
                id: valueText
                text: value.toString() + "%"
                anchors.centerIn: parent
            }
        }

        PrefsButton{
            width: parent.height
            height: parent.height
            buttonText: "+";
            innerText.color: AppStyle.textColor
            color: boxColor
            hoverColor: boxColor
            pressColor: boxColor
            borderColor: "grey"
            fontSize: 12
            borderWidth: 0.6
            borderRadius: 8
            onClicked: {
                if (value < maximumValue) {
                    value = value + 25
                }
            }
        }
    }
}
