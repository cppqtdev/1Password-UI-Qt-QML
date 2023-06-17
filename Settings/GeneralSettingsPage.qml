import QtQuick 2.15
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.15
import "../GameScreens"
import "../common"
import "../Settings"
ScreenPage{
    anchors.fill: parent
    ColumnLayout{
        Layout.fillWidth: true
        PrefsComboBox{
            anchors.centerIn: parent
            model: SideListModel{}//["Adesh","Kabir","Raj","Adesh","Kabir","Raj","Adesh","Kabir","Raj"]
        }
    }
}
