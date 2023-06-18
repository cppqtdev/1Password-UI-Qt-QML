import QtQuick 2.15
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.15
import "../GameScreens"
import "../common"
import "../Settings"
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

            LablePrefsComboBox{
                label:qsTr("Theme :")
                model: SideListModel{}
            }

            PrefsCheckbox{
                text:qsTr("Use device accent color")
            }

            Label {
                opacity: 0.87
                font.pointSize: 14
                text:qsTr("Density")
                font.weight: Font.Medium
                font.bold: true
                Layout.alignment: Qt.AlignLeft
                color: "black"
                elide: Text.ElideRight
                Layout.leftMargin: 10
            }

            // impliment Compact and confortable

            Label {
                opacity: 0.87
                font.pointSize: 14
                text:qsTr("Interface Zoom")
                font.weight: Font.Medium
                font.bold: true
                Layout.alignment: Qt.AlignLeft
                color: "black"
                elide: Text.ElideRight
                Layout.leftMargin: 10
            }

            // Iterface increase

            Label {
                opacity: 0.87
                font.pointSize: 14
                text:qsTr("Always Show in Sidebar")
                font.weight: Font.Medium
                font.bold: true
                Layout.alignment: Qt.AlignLeft
                color: "black"
                elide: Text.ElideRight
                Layout.leftMargin: 10
            }

            PrefsCheckbox{
                text:qsTr("Categories")
            }
            PrefsCheckbox{
                text:qsTr("Tags")
            }

            Item{
                Layout.fillWidth: true
                height: 10
            }
        }
    }
}
