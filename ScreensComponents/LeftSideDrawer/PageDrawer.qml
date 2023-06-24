import QtQuick 2.0
import QtQuick.Layouts 1.0
import QtQuick.Controls 2.0

import "../../common"
import "../../"
import AppStyle 1.0
import FontStyle 1.0
Drawer {
    id: drawer

    implicitHeight: parent.height
    implicitWidth: Math.min (parent.width > parent.height ? 320 : 280,
                             Math.min (parent.width, parent.height) * 0.90)

    property string iconTitle: ""
    property string iconSource: ""
    property string iconSubtitle: ""
    property size iconSize: Qt.size (72, 72)
    property color iconBgColorLeft: "#de6262"
    property color iconBgColorRight: "#ffb850"

    property alias items: listView.model
    property alias index: listView.currentIndex
    background: Rectangle{
        anchors.fill: parent
        color: AppStyle.sideBarDarkColor
    }

    onIndexChanged: {
        var isSpacer = false
        var isSeparator = false
        var item = items.get (index)

        if (typeof (item) !== "undefined") {
            if (typeof (item.spacer) !== "undefined")
                isSpacer = item.spacer

            if (typeof (item.separator) !== "undefined")
                isSpacer = item.separator

            if (!isSpacer && !isSeparator)
                actions [index]()
        }
    }

    property var actions
    contentItem: ColumnLayout {
        spacing: 0
        anchors.margins: 0
        anchors.fill: parent

        //
        // Icon controls
        //
        Rectangle {
            id: iconRect
            z: 1
            height: 120
            Layout.fillWidth: true
            color: AppStyle.sideBarDarkColor

            RowLayout {
                spacing: 16

                anchors {
                    fill: parent
                    centerIn: parent
                    margins: 16
                }

                Image {
                    source: iconSource
                    sourceSize: iconSize
                }

                ColumnLayout {
                    spacing: 8
                    Layout.fillWidth: true
                    Layout.fillHeight: true

                    Item {
                        Layout.fillHeight: true
                    }

                    Label {
                        text: iconTitle
                        font.weight: Font.Medium
                        font.pixelSize: 16
                    }

                    Label {
                        opacity: 0.87
                        text: iconSubtitle
                        font.pixelSize: 12
                    }

                    Item {
                        Layout.fillHeight: true
                    }
                }

                Item {
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                }
            }
        }


        Rectangle{
            color: "grey"
            Layout.fillWidth: true
            height: 1
            Layout.topMargin: 2
            Layout.bottomMargin: 5
        }

        //
        // Page selector
        //
        ListView {
            z: 0
            id: listView
            currentIndex: -1
            Layout.fillWidth: true
            Layout.leftMargin: 10
            Layout.rightMargin: 10
            Layout.fillHeight: true
            Component.onCompleted: currentIndex = 0

            highlight: Rectangle {
                width: parent.height * 0.7
                height: parent.height * 0.7
                Layout.alignment: Qt.AlignVCenter
                Layout.leftMargin: 10
                radius: 8
                color: AppStyle.applicationColor
                focus: true

                Rectangle{
                    height: parent.height * 0.60
                    width: 5
                    color: "yellow"
                    anchors{
                        verticalCenter: parent.verticalCenter
                        right: parent.right
                        rightMargin: 10
                    }
                    radius: 8
                }
            }

            delegate: DrawerItem {
                model: items
                width: parent.width
                pageSelector: listView
                onClicked: {
                    if (listView.currentIndex !== index)
                        listView.currentIndex = index

                    drawer.close()
                }
            }

            ScrollIndicator.vertical: ScrollIndicator { }
        }
    }
}
