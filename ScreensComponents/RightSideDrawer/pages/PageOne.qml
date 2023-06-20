import QtQuick 2.9
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.2
import "../../../common"
import "../../../Settings"
import "../../../GameScreens"
ScreenPage{
    id:root
    contentHeight: mainLayout.implicitHeight
    Pane {
        anchors.fill: parent
        clip: true
        background: Rectangle{
            anchors.fill: parent
            color: "transparent"
        }

        ColumnLayout{
            id: mainLayout
            anchors.left: parent.left
            anchors.right: parent.right
            spacing: 20

            PrefsCheckboxLable{
                id:helloWindow
                title: qsTr("Unlock using Window Hello")
                description: qsTr("You'll still need to enter your account password after you restart. <a href='https://www.example.com'>About Window hello security.</a>")
            }
            PrefsCheckboxLable{
                visible: helloWindow.checked
                Layout.leftMargin: 35
                title: qsTr("Show Window Hello prompt automatically")
                description: qsTr("Turn this off if Window hello is not always accessible on your system. \nYou can still click the Window Hello button to unlock Windows Hello.")
            }
            PrefsCheckbox{
                visible: helloWindow.checked
                Layout.leftMargin: 35
                text: qsTr("Use the trusted Platform Module with Window Hello")
            }

            LablePrefsComboBox{
                label:qsTr("Require Password")
                model: SideListModel{}
            }
            Label {
                opacity: 0.87
                font.pointSize: 14
                text:qsTr("Auto-lock")
                font.weight: Font.Medium
                font.bold: true
                Layout.alignment: Qt.AlignLeft
                color: "black"
                elide: Text.ElideRight
                Layout.leftMargin: 10
            }
            PrefsCheckboxLable{
                title: qsTr("Lock 1password when computer locks")
                description: qsTr("On sleep,screen saver,and fast user switching.")
            }
            LablePrefsComboBox{
                label:qsTr("Lock after the system idle")
                model: SideListModel{}
            }

            Label {
                opacity: 0.87
                font.pointSize: 14
                text:qsTr("Clipboard")
                font.weight: Font.Medium
                font.bold: true
                Layout.alignment: Qt.AlignLeft
                color: "black"
                elide: Text.ElideRight
                Layout.leftMargin: 10
            }
            PrefsCheckbox{
                text: qsTr("Remove copied information and authentication \ncodes after 90 seconds")
            }
            Label {
                opacity: 0.87
                font.pointSize: 14
                text:qsTr("Concealed Field")
                font.weight: Font.Medium
                font.bold: true
                Layout.alignment: Qt.AlignLeft
                color: "black"
                elide: Text.ElideRight
                Layout.leftMargin: 10
            }
            PrefsCheckbox{
                text: qsTr("Always show password and full credit card number")
            }

            PrefsCheckbox{
                text: qsTr("Hold Ctrl+Alt to toggle revealed fields")
            }
            HorizontalDivider {}
        }
    }
    Component.onDestruction: {
        cleanup()
    }
    function init() {
        console.log(qsTr("Init done from Car"))
    }
    function cleanup() {
        console.log(qsTr("Cleanup done from Car"))
    }
}

