import QtQuick 2.15
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.15
import "./"
import "../ScreensComponents"
import "../Settings"
ScreenPage{
    anchors.fill: parent
    SplitView {
        id: splitView
        anchors.fill: parent
        orientation: Qt.Horizontal

        handle: Item {
            implicitWidth: 3
            height: parent.height
            MouseArea {
                id:mouseRegion
                anchors.fill: parent
                hoverEnabled: true
                onHoveredChanged: {
                    if(containsMouse){
                        colorLayer.color = "blue"
                    }else{
                        colorLayer.color = mainRect.color
                    }
                }
                Rectangle {
                    id:colorLayer
                    anchors.fill: parent
                    color: mainRect.color
                }
            }
        }

        Rectangle {
            id: mainRect
            color: "#dde4de"
            SplitView.preferredWidth: 250
            SplitView.maximumWidth: 300
            SplitView.minimumWidth: 250
            ListView{
                id:listItemView
                anchors.fill: parent
                anchors.margins: 10
                focus: true
                highlightFollowsCurrentItem :true
                highlight: Rectangle
                {
                    width: parent.height * 0.7
                    height: parent.height * 0.7
                    Layout.alignment: Qt.AlignVCenter
                    Layout.leftMargin: 10
                    radius: 8
                    color:"blue"
                    opacity: 0.7
                    focus: true
                }

                model: SideListModel{}
                delegate: SideListDelegate{
                    width: listItemView.width
                    iconRectIcon: iconName
                    iconRectColor: iconColor
                    onClicked:{
                        ListView.view.currentIndex = index
                    }
                }
            }
        }

        Rectangle {
            id: collapsibleRect
            SplitView.fillWidth: true
            color: "#fafbfb"
            clip: true
            Text {
                anchors.centerIn: parent
                font.pixelSize: 24
                text: "NOT COLLAPSED"
                Behavior on rotation { NumberAnimation { duration: 100 } }
            }
        }
    }

}
