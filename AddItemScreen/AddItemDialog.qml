import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.3

import "../GameScreens"
import "../common"
import AppStyle 1.0
import FontStyle 1.0
import ".././"
ApplicationWindow {
    id:root
    visible: true
    width: 550
    height: 700
    minimumWidth: 550
    maximumWidth: 550
    minimumHeight: 700
    maximumHeight: 700
    title: "Add Items"
    color: AppStyle.background
    flags: Qt.FramelessWindowHint //Qt.Dialog
    background: Rectangle{
        color: AppStyle.background
        anchors.fill: parent
        border.color: "grey"
        border.width: 0.5
        radius: 8
    }

    Loader{
        id:mainLoader
        anchors.fill: parent
        StackView{
            id:mainStack
            anchors.fill: parent
            initialItem: AddItemHomePage{
                anchors.fill: parent
            }
        }
    }
}
