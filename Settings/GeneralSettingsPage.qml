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
        PrefsCheckbox{

        }
        PrefsCheckboxLable{
            description: qsTr("Example APP demonstrating Qt Quick Controls 2 %1").arg("<a href='https://www.example.com'>Click me!</a>")
        }
        PrefsButton
        {
            width: innerText.width + 40
            height: 38
            buttonText: "Send Diagnostics";
            innerText.color: "#4169E1"
            color: "transparent"
            hoverColor: "#A7C7E7"
            pressColor: "#A7C7E7"
            borderColor: "#4169E1"
            fontSize: 12
            borderWidth: 1
            borderRadius: 8
            onClicked: {
            }
        }
    }
}
