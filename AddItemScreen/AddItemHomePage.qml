import QtQuick 2.15
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3
import QtGraphicalEffects 1.15


import "../GameScreens"
import "../"
import "../common"
import AppStyle 1.0
import FontStyle 1.0

Page{
    id:root
    padding: 0
    clip: true
    header:  RoundedRectangle {
        clip: true
        anchors.left: parent.left
        anchors.right: parent.right
        width: parent.width; height: 80
        color: AppStyle.transparent//"#e17055"
        radius: 8
        radiusCorners: Qt.AlignLeft | Qt.AlignRight | Qt.AlignTop
        Rectangle{
            visible: bodyPage.flicking || bodyPage.position > 0
            color: Qt.darker("grey",1.09)
            height: 1.5
            anchors.leftMargin: 1
            anchors.rightMargin: 1
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.bottom: parent.bottom
        }
        PrefsButton {
            width: 32
            height: 32
            buttonText: "⮜";
            innerText.color: state === 'Hovering' ? "white" : AppStyle.textColor
            color: AppStyle.transparent
            hoverColor: AppStyle.applicationColorLighter
            pressColor: AppStyle.applicationColorLighter
            borderColor: AppStyle.transparent
            fontSize: 24
            borderWidth: 1
            borderRadius: 6

            anchors{
                left: parent.left
                leftMargin: 15
                verticalCenter: parent.verticalCenter
            }

            onClicked: {
                close()
            }
        }

        PrefsTextField{
            backwidth: parent.width * 0.8
            horizontalAlignment:Text.AlignLeft
            anchors{
                verticalCenter: parent.verticalCenter
                horizontalCenter: parent.horizontalCenter
                leftMargin: 10
                rightMargin: 10
            }

            placeholderText:qsTr("What would you like to add 1Password ?")
        }

        PrefsButton {
            width: 32
            height: 32
            buttonText: "🗙";
            innerText.color: state === 'Hovering' ? "white" : AppStyle.textColor
            color: AppStyle.transparent
            hoverColor: AppStyle.applicationColorLighter
            pressColor: AppStyle.applicationColorLighter
            borderColor: AppStyle.transparent
            fontSize: 24
            borderWidth: 1
            borderRadius: 6
            anchors{
                right: parent.right
                rightMargin: 15
                verticalCenter: parent.verticalCenter
            }
            onClicked: {
                close()
            }
        }
    }

    background: Rectangle{
        anchors.fill: parent
        color: AppStyle.transparent
        radius: 8
    }

    contentData:ScreenPage {
        id:bodyPage
        anchors.fill: parent
        anchors.margins: 10
        contentHeight: mainLayout.implicitHeight
        property bool isBold: false
        clip: true
        Page {
            anchors.fill: parent
            clip: true
            background:root.background
            ColumnLayout{
                id: mainLayout
                anchors.left: parent.left
                anchors.right: parent.right
                spacing: 10

                ListView{
                    id:listItemView
                    width: parent.width
                    clip: true
                    Layout.fillWidth: true
                    implicitHeight: 200
                    anchors.margins: 10
                    focus: true
                    spacing: 20
                    orientation: ListView.Horizontal
                    highlightFollowsCurrentItem :true
                    onCurrentIndexChanged: {
                        //root.switchPage(currentIndex)
                    }

                    highlight: Rectangle {
                        width: parent.height * 0.7
                        height: parent.height * 0.7
                        Layout.alignment: Qt.AlignVCenter
                        Layout.leftMargin: 10
                        radius: 8
                        color: AppStyle.transparent
                        focus: true
                    }

                    model: CategoriesListModel{}
                    delegate: PrefsCategoriesDelegate{
                        width: 180
                        height: 180
                        iconRectIcon: iconName
                        iconRectColor: iconColor
                        onClicked:{
                            ListView.view.currentIndex = index
                            //root.switchPage(index)
                        }
                    }
                }

                RowLayout{
                    Layout.fillWidth: true
                    Layout.alignment: Qt.AlignHCenter
                    spacing: 30
                    PrefsItemDelegate{
                        Layout.preferredWidth: root.width * 0.42
                        name: "Login"
                    }

                    PrefsItemDelegate{
                        Layout.preferredWidth: root.width * 0.42
                        name: "Secure Notes"
                    }
                }
                RowLayout{
                    Layout.fillWidth: true
                    Layout.alignment: Qt.AlignHCenter
                    spacing: 30
                    PrefsItemDelegate{
                        Layout.preferredWidth: root.width * 0.42
                        name: "Login"
                    }

                    PrefsItemDelegate{
                        Layout.preferredWidth: root.width * 0.42
                        name: "Secure Notes"
                    }
                }
                RowLayout{
                    Layout.fillWidth: true
                    Layout.alignment: Qt.AlignHCenter
                    spacing: 30
                    PrefsItemDelegate{
                        Layout.preferredWidth: root.width * 0.42
                        name: "Login"
                    }

                    PrefsItemDelegate{
                        Layout.preferredWidth: root.width * 0.42
                        name: "Secure Notes"
                    }
                }
                RowLayout{
                    Layout.fillWidth: true
                    Layout.alignment: Qt.AlignHCenter
                    spacing: 30
                    PrefsItemDelegate{
                        Layout.preferredWidth: root.width * 0.42
                        name: "Login"
                    }

                    PrefsItemDelegate{
                        Layout.preferredWidth: root.width * 0.42
                        name: "Secure Notes"
                    }
                }
                RowLayout{
                    Layout.fillWidth: true
                    Layout.alignment: Qt.AlignHCenter
                    spacing: 30
                    PrefsItemDelegate{
                        Layout.preferredWidth: root.width * 0.42
                        name: "Login"
                    }

                    PrefsItemDelegate{
                        Layout.preferredWidth: root.width * 0.42
                        name: "Secure Notes"
                    }
                }
                RowLayout{
                    Layout.fillWidth: true
                    Layout.alignment: Qt.AlignHCenter
                    spacing: 30
                    PrefsItemDelegate{
                        Layout.preferredWidth: root.width * 0.42
                        name: "Login"
                    }

                    PrefsItemDelegate{
                        Layout.preferredWidth: root.width * 0.42
                        name: "Secure Notes"
                    }
                }
                RowLayout{
                    Layout.fillWidth: true
                    Layout.alignment: Qt.AlignHCenter
                    spacing: 30
                    PrefsItemDelegate{
                        Layout.preferredWidth: root.width * 0.42
                        name: "Login"
                    }

                    PrefsItemDelegate{
                        Layout.preferredWidth: root.width * 0.42
                        name: "Secure Notes"
                    }
                }
                RowLayout{
                    Layout.fillWidth: true
                    Layout.alignment: Qt.AlignHCenter
                    spacing: 30
                    PrefsItemDelegate{
                        Layout.preferredWidth: root.width * 0.42
                        name: "Login"
                    }

                    PrefsItemDelegate{
                        Layout.preferredWidth: root.width * 0.42
                        name: "Secure Notes"
                    }
                }
                RowLayout{
                    Layout.fillWidth: true
                    Layout.alignment: Qt.AlignHCenter
                    spacing: 30
                    PrefsItemDelegate{
                        Layout.preferredWidth: root.width * 0.42
                        name: "Login"
                    }

                    PrefsItemDelegate{
                        Layout.preferredWidth: root.width * 0.42
                        name: "Secure Notes"
                    }
                }
                RowLayout{
                    Layout.fillWidth: true
                    Layout.alignment: Qt.AlignHCenter
                    spacing: 30
                    PrefsItemDelegate{
                        Layout.preferredWidth: root.width * 0.42
                        name: "Login"
                    }

                    PrefsItemDelegate{
                        Layout.preferredWidth: root.width * 0.42
                        name: "Secure Notes"
                    }
                }
                RowLayout{
                    Layout.fillWidth: true
                    Layout.alignment: Qt.AlignHCenter
                    spacing: 30
                    PrefsItemDelegate{
                        Layout.preferredWidth: root.width * 0.42
                        name: "Login"
                    }

                    PrefsItemDelegate{
                        Layout.preferredWidth: root.width * 0.42
                        name: "Secure Notes"
                    }
                }


            }
        }
    }
}
