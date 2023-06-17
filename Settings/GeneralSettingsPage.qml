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
        spacing: 50
        PrefsComboBox{
            model: SideListModel{}//["Adesh","Kabir","Raj","Adesh","Kabir","Raj","Adesh","Kabir","Raj"]
        }
        PrefsComboBoxLabel{
            model: SideListModel{}//["Adesh","Kabir","Raj","Adesh","Kabir","Raj","Adesh","Kabir","Raj"]
        }
    }
}
