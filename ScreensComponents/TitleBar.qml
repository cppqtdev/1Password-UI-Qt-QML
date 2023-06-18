import QtQuick 2.15
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.5
Item {
    height: 40
    width: parent.width
    property int buttonWidthHeight: 30
    property int buttonRadius: 6
    signal homeClicked()
    signal settingsCliked()
    signal menuClicked()
    signal helpCliked()
    RowLayout{
        anchors.fill: parent
        MainButton{
            id:menu
            width: buttonWidthHeight
            height: buttonWidthHeight
            borderRadius:buttonRadius
            Layout.alignment: Qt.AlignVCenter  && Qt.AlignLeft
            Layout.leftMargin: 10
            sourceIcon:"qrc:/Img/Icons/bars-solid.svg"
            iconWidth:buttonWidthHeight*0.6
            iconHeight:buttonWidthHeight*0.6
            onClicked: {
                menuClicked()
            }
        }
        Label{
            Layout.fillWidth: true
            Layout.alignment: Qt.AlignVCenter
        }

        MainButton{
            id:help
            width: buttonWidthHeight
            height: buttonWidthHeight
            borderRadius:buttonRadius
            Layout.alignment: Qt.AlignVCenter  && Qt.AlignRight
            sourceIcon:"qrc:/Img/Icons/hire-a-helper.svg"
            iconWidth:buttonWidthHeight*0.6
            iconHeight:buttonWidthHeight*0.6
            onClicked: {
                helpCliked()
            }
        }
        MainButton{
            id:home
            width: buttonWidthHeight
            height: buttonWidthHeight
            borderRadius:buttonRadius
            Layout.alignment: Qt.AlignVCenter  && Qt.AlignRight
            sourceIcon:"qrc:/Img/Icons/house-user-solid.svg"
            iconWidth:buttonWidthHeight*0.6
            iconHeight:buttonWidthHeight*0.6
            onClicked: {
                homeClicked()
            }
        }
        MainButton{
            id:settings
            width: buttonWidthHeight
            height: buttonWidthHeight
            borderRadius:buttonRadius
            Layout.alignment: Qt.AlignVCenter && Qt.AlignRight
            Layout.rightMargin: 10
            sourceIcon:"qrc:/Img/Icons/gear-solid.svg"
            iconWidth:buttonWidthHeight*0.6
            iconHeight:buttonWidthHeight*0.6
            onClicked: {
                settingsCliked()
            }
        }
    }

}
