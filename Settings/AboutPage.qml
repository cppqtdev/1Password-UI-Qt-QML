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
        leftPadding: 0
        topPadding: 0
        clip: true
        background: Rectangle{
            anchors.fill: parent
            color: "transparent"
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
                    Label {
                        opacity: 0.60
                        font.pointSize:18
                        text:qsTr("Aksh Singh")
                        font.weight: Font.Medium
                        font.bold: true
                        color: "black"
                        Layout.alignment: Qt.AlignHCenter
                        elide: Text.ElideRight
                    }
                    Label {
                        opacity: 0.60
                        font.pointSize:18
                        text:qsTr("Embedded Software Engineer")
                        font.weight: Font.Medium
                        font.bold: true
                        Layout.alignment: Qt.AlignHCenter
                        color: "black"
                        elide: Text.ElideRight
                    }
                    Label {
                        opacity: 0.60
                        font.pointSize:18
                        text:qsTr("Hire Me :  akshworkmail@gmail.com")
                        font.weight: Font.Medium
                        font.bold: true
                        Layout.alignment: Qt.AlignHCenter
                        color: "black"
                        elide: Text.ElideRight
                    }
                }
            }

            Rectangle{
                Layout.fillWidth: true
                height: 150
                color: "#ffffff"
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
                    Label {
                        opacity: 0.6
                        font.pointSize: 10
                        text:qsTr("Software Updated (%1)").arg("<a href='https://www.example.com'>Release Note</a>")
                        font.weight: Font.Medium
                        font.bold: true
                        Layout.alignment: Qt.AlignLeft
                        color: "black"
                        elide: Text.ElideRight
                    }

                    Label {
                        opacity: 0.60
                        font.pointSize:10
                        text:qsTr("Software version (12.06.1885)")
                        font.weight: Font.Medium
                        font.bold: true
                        Layout.alignment: Qt.AlignLeft
                        color: "black"
                        elide: Text.ElideRight
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
                    innerText.color: "#0570eb"
                    color: "transparent"
                    hoverColor: "#0570eb"
                    pressColor: "#0570eb"
                    borderColor: "#0570eb"
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
                    Label {
                        opacity: 0.6
                        font.pointSize: 10
                        text:qsTr("@ 2023 1Password. All rights resered.")
                        font.weight: Font.Medium
                        font.bold: true
                        Layout.alignment: Qt.AlignHCenter
                        color: "black"
                        elide: Text.ElideRight
                    }
                    Label {
                        opacity: 0.87
                        font.pointSize: 10
                        text:qsTr("<a href='https://www.example.com'>Terms of Service</a>")
                        font.weight: Font.Medium
                        font.bold: true
                        Layout.alignment: Qt.AlignHCenter
                        color: "black"
                        elide: Text.ElideRight
                    }
                    Label {
                        opacity: 0.87
                        font.pointSize: 10
                        text:qsTr("<a href='https://www.example.com'>Privacy Policy</a>")
                        font.weight: Font.Medium
                        font.bold: true
                        Layout.alignment: Qt.AlignHCenter
                        color: "black"
                        elide: Text.ElideRight
                    }
                    Label {
                        opacity: 0.87
                        font.pointSize: 10
                        text:qsTr("<a href='https://www.example.com'>Credits & Ackonowledgements</a>")
                        font.weight: Font.Medium
                        font.bold: true
                        Layout.alignment: Qt.AlignHCenter
                        color: "black"
                        elide: Text.ElideRight
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
