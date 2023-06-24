import QtQuick 2.15
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.15
import "../GameScreens"
import "../common"
import "../Settings"
import "../"
import AppStyle 1.0
import FontStyle 1.0
ScreenPage{
    id:root
    contentHeight: mainLayout.implicitHeight
    Pane {
        anchors.fill: parent
        leftPadding: 0
        topPadding: 0
        clip: true
        background: Rectangle{
            anchors.fill: parent
            color: AppStyle.transparent
        }

        ColumnLayout{
            id: mainLayout
            anchors.left: parent.left
            anchors.right: parent.right
            spacing: 30

            Rectangle{
                width: root.width
                height: 150
                color: "#35c9d5"
                Image {
                    width: parent.width
                    height: 150
                    fillMode: Image.PreserveAspectFit
                    source: "qrc:/Img/Basic/undraw_programming_re_kg9v.svg"
                    anchors.fill: parent
                }
            }

            Rectangle{
                Layout.fillWidth: true
                height: 150
                color: "transparent"
                Layout.leftMargin: 20
                Layout.rightMargin: 20
                radius: 12
                ColumnLayout{
                    anchors.centerIn: parent
                    PrefsSettingsHeader{
                        Layout.alignment: Qt.AlignHCenter
                        text: qsTr("Aksh Singh")
                    }
                    PrefsSettingsHeader{
                        Layout.alignment: Qt.AlignHCenter
                        text: qsTr("Embedded Software Engineer")
                    }
                    PrefsSettingsHeader{
                        Layout.alignment: Qt.AlignHCenter
                        text: qsTr("Hire Me :  akshworkmail@gmail.com")
                    }
                }
            }

            Rectangle{
                Layout.fillWidth: true
                height: 150
                color: AppStyle.background
                border.width: 2
                border.color: "#e9e9e9"
                Layout.leftMargin: 20
                Layout.rightMargin: 20
                radius: 12
                ColumnLayout{
                    anchors{
                        left: parent.left
                        leftMargin: 20
                        verticalCenter: parent.verticalCenter
                    }
                    PrefsSettingsHeader{
                        isBold: false
                        Layout.alignment: Qt.AlignLeft
                        text: qsTr("Software Updated (%1)").arg("<a href='https://www.example.com'>Release Note</a>")
                    }

                    PrefsSettingsHeader{
                        isBold: false
                        Layout.alignment: Qt.AlignLeft
                        text: qsTr("Software version (12.06.1885)")
                    }
                }

                PrefsButton{
                    anchors{
                        right: parent.right
                        rightMargin: 20
                        verticalCenter: parent.verticalCenter
                    }
                    width: innerText.width + 40
                    height: 38
                    buttonText: "Check For Updated";
                    innerText.color:AppStyle.applicationColor
                    color: AppStyle.transparent
                    hoverColor: AppStyle.transparent
                    pressColor: AppStyle.transparent
                    borderColor: AppStyle.applicationColor
                    fontSize: 12
                    borderWidth: 1
                    borderRadius: 8
                    onClicked: {
                    }
                }
            }

            Rectangle{
                Layout.fillWidth: true
                height: 150
                color: "transparent"
                Layout.leftMargin: 20
                Layout.rightMargin: 20
                radius: 12
                ColumnLayout{
                    anchors{
                       centerIn: parent
                    }
                    PrefsSettingsHeader{
                        isBold: false
                        Layout.alignment: Qt.AlignHCenter
                        text: qsTr("@ 2023 1Password. All rights resered.")
                    }
                    PrefsSettingsHeader{
                        isBold: false
                        Layout.alignment: Qt.AlignHCenter
                        text: qsTr("<a href='https://www.example.com'>Terms of Service</a>")
                    }
                    PrefsSettingsHeader{
                        isBold: false
                        Layout.alignment: Qt.AlignHCenter
                        text: qsTr("<a href='https://www.example.com'>Privacy Policy</a>")
                    }
                    PrefsSettingsHeader{
                        isBold: false
                        Layout.alignment: Qt.AlignHCenter
                        text: qsTr("<a href='https://www.example.com'>Credits & Ackonowledgements</a>")
                    }
                }
            }

            Item{
                Layout.fillWidth: true
                height: 10
            }
        }
    }
}
