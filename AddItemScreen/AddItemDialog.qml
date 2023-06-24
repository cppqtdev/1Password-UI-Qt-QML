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
    width: 850
    height: 650
    minimumWidth: 850
    maximumWidth: 850
    minimumHeight: 650
    maximumHeight: 650
    title: "Add Items"
    color: AppStyle.background
    flags: Qt.Dialog
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
