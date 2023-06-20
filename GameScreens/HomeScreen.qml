import QtQuick 2.15
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.15
import "./"
import "../ScreensComponents"
import "../Settings"
import "../common"
ScreenPage{
    id:root
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
            SplitView.preferredWidth: 300
            SplitView.maximumWidth: 300
            SplitView.minimumWidth: 300
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

                    Rectangle{
                        height: parent.height * 0.59
                        width: 5
                        color:"yellow"
                        anchors.rightMargin: 5
                        anchors.verticalCenter: parent.verticalCenter
                        Layout.alignment: Qt.AlignRight
                        radius: 4
                    }

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
            color: "transparent"
            clip: true
//            SplitView {
//                anchors.fill: parent
//                orientation: Qt.Horizontal

//                handle: Item {
//                    implicitWidth: 3
//                    height: parent.height
//                    MouseArea {
//                        anchors.fill: parent
//                        hoverEnabled: true
//                        onHoveredChanged: {
//                            if(containsMouse){
//                                mainLayoutSplit.color = "blue"
//                            }else{
//                                mainLayoutSplit.color = mainLayout.color
//                            }
//                        }
//                        Rectangle {
//                            id:mainLayoutSplit
//                            anchors.fill: parent
//                            color: mainLayout.color
//                        }
//                    }
//                }

//                Rectangle {
//                    id: mainLayout
//                    color: "transparent"
//                    SplitView.preferredWidth: parent.width * 0.70
//                    SplitView.maximumWidth: parent.width * 0.70
//                    SplitView.minimumWidth:  parent.width * 0.70

//                    Item{
//                        anchors.fill: parent
//                        anchors.margins: 40
//                        ColumnLayout{
//                            id:layout
//                            anchors.fill: parent
//                            spacing: 15
//                            Rectangle{
//                                Layout.alignment: Qt.AlignTop
//                                Layout.fillWidth: true
//                                Layout.preferredHeight: layout.height * 0.30
//                                color: "#f7f7f7"
//                                radius: 12
//                                Image{
//                                    anchors.fill: parent
//                                    source: "qrc:/Img/Basic/home.png"
//                                }
//                            }
//                            Rectangle{
//                                id:discoverLayout
//                                Layout.fillWidth: true
//                                Layout.preferredHeight: layout.height* 0.17
//                                color: "#f7f7f7"
//                                radius: 12

//                                RowLayout{
//                                    spacing: 10
//                                    anchors.fill: parent
//                                    Layout.alignment: Qt.AlignVCenter
//                                    anchors.leftMargin: 10
//                                    anchors.rightMargin: 10
//                                    UserDelegate{
//                                        iconRectIcon: "🌨️"
//                                        iconRectColor: "#ffffff"
//                                        delegateColor: "#ff4030"
//                                        Layout.fillWidth: true
//                                        Layout.preferredHeight: 50
//                                        title: "Open"
//                                        subTitle: "Open"
//                                    }
//                                    UserDelegate{
//                                        iconRectIcon: "🔎"
//                                        iconRectColor: "#ffffff"
//                                        delegateColor: "#ffb500"
//                                        Layout.preferredHeight: 50
//                                        Layout.fillWidth: true
//                                        title: "Discover"
//                                        subTitle: "Open"
//                                    }
//                                    UserDelegate{
//                                        iconRectIcon: "🔒"
//                                        iconRectColor: "#ffffff"
//                                        delegateColor: "#4250ff"
//                                        Layout.preferredHeight: 50
//                                        Layout.fillWidth: true
//                                        title: "Secure"
//                                        subTitle: "Open"
//                                    }
//                                }
//                            }

//                            Rectangle{
//                                Layout.fillWidth: true
//                                Layout.preferredHeight: layout.height* 0.17
//                                color: "#f7f7f7"
//                                radius: 12
//                                clip: true
//                                Label {
//                                    opacity: 0.87
//                                    font.pointSize: 14
//                                    text: qsTr("Partner")
//                                    font.weight: Font.Medium
//                                    color: "#334681"
//                                    anchors{
//                                        left: parent.left
//                                        leftMargin: 10
//                                        topMargin: 10
//                                        top: parent.top
//                                    }
//                                }

//                                ListView{
//                                    width: parent.width * 0.6
//                                    height: 40
//                                    orientation: Qt.Horizontal
//                                    spacing: 5
//                                    model: SideListModel{}
//                                    clip: true
//                                    anchors{
//                                        left: parent.left
//                                        leftMargin: 10
//                                        bottomMargin: 10
//                                        bottom: parent.bottom
//                                    }

//                                    delegate: PrefsButton{
//                                        width:  40
//                                        height: 40
//                                        buttonText: "🙍‍";
//                                        innerText.color: "black"
//                                        color: "#ffd545"
//                                        hoverColor: "#ffd545"
//                                        pressColor: "#ffd545"
//                                        borderColor: "#ffd545"
//                                        fontSize: 14
//                                        borderWidth: 1
//                                        borderRadius: 8
//                                        onClicked: {
//                                        }
//                                    }
//                                }


//                                PrefsButton{
//                                    width:  45
//                                    height: 45
//                                    buttonText: "+";
//                                    innerText.color: "black"
//                                    color: "#ffffff"
//                                    hoverColor: "#ffffff"
//                                    pressColor: "#ffffff"
//                                    borderColor: "#ffffff"
//                                    fontSize: 14
//                                    borderWidth: 1
//                                    borderRadius: 8
//                                    onClicked: {
//                                    }
//                                    anchors{
//                                        right: parent.right
//                                        rightMargin: 10
//                                        bottomMargin: 10
//                                        bottom: parent.bottom
//                                    }
//                                }
//                            }

//                            RowLayout{
//                                spacing: 20
//                                Layout.alignment: Qt.AlignBottom
//                                Layout.fillWidth: true
//                                Layout.preferredHeight: layout.height* 0.20

//                                Rectangle{
//                                    Layout.alignment: Qt.AlignBottom
//                                    Layout.fillWidth: true
//                                    Layout.preferredHeight: layout.height* 0.20
//                                    color: "#f5f7fc"
//                                    radius: 12
//                                    clip: true
//                                    ColumnLayout{
//                                        spacing: 2
//                                        anchors{
//                                            left: parent.left
//                                            leftMargin: 10
//                                            topMargin: 10
//                                            top: parent.top
//                                        }
//                                        Label {
//                                            opacity: 0.87
//                                            font.pointSize: 8
//                                            text: qsTr("10.01.2023")
//                                            font.weight: Font.Medium
//                                            color: "#334681"
//                                        }
//                                        Label {
//                                            opacity: 0.87
//                                            font.pointSize: 10
//                                            text: qsTr("Mega Auction")
//                                            font.weight: Font.Medium
//                                            color: "#334681"
//                                        }
//                                        Label {
//                                            opacity: 0.87
//                                            font.pointSize: 8
//                                            text: qsTr("09 Member Joining")
//                                            font.weight: Font.Medium
//                                            color: "#334681"
//                                        }
//                                    }

//                                    PrefsButton{
//                                        width:  35
//                                        height: 35
//                                        buttonText: "⋮"
//                                        innerText.color: "black"
//                                        color: "#ffffff"
//                                        hoverColor: "#ffffff"
//                                        pressColor: "#ffffff"
//                                        borderColor: "#ffffff"
//                                        fontSize: 18
//                                        borderWidth: 1
//                                        borderRadius: 8
//                                        onClicked: {
//                                        }
//                                        anchors{
//                                            right: parent.right
//                                            rightMargin: 10
//                                            topMargin:  10
//                                            top: parent.top
//                                        }
//                                    }

//                                    ListView{
//                                        width: parent.width * 0.6
//                                        height: 35
//                                        orientation: Qt.Horizontal
//                                        spacing: 5
//                                        model: SideListModel{}
//                                        clip: true
//                                        anchors{
//                                            left: parent.left
//                                            leftMargin: 10
//                                            bottomMargin: 10
//                                            bottom: parent.bottom
//                                        }

//                                        delegate: PrefsButton{
//                                            width:  35
//                                            height: 35
//                                            buttonText: "🙍‍";
//                                            innerText.color: "black"
//                                            color: "#ffd545"
//                                            hoverColor: "#ffd545"
//                                            pressColor: "#ffd545"
//                                            borderColor: "#ffd545"
//                                            fontSize: 14
//                                            borderWidth: 1
//                                            borderRadius: 8
//                                            onClicked: {
//                                            }
//                                        }
//                                    }


//                                    PrefsButton{
//                                        width:  35
//                                        height: 35
//                                        buttonText: "+";
//                                        innerText.color: "black"
//                                        color: "#ffffff"
//                                        hoverColor: "#ffffff"
//                                        pressColor: "#ffffff"
//                                        borderColor: "#ffffff"
//                                        fontSize: 14
//                                        borderWidth: 1
//                                        borderRadius: 8
//                                        onClicked: {
//                                        }
//                                        anchors{
//                                            right: parent.right
//                                            rightMargin: 10
//                                            bottomMargin: 10
//                                            bottom: parent.bottom
//                                        }
//                                    }
//                                }

//                                Rectangle{
//                                    Layout.alignment: Qt.AlignBottom
//                                    Layout.fillWidth: true
//                                    Layout.preferredHeight: layout.height* 0.20
//                                    color: "#fbe9dd"
//                                    radius: 12
//                                    clip: true
//                                    ColumnLayout{
//                                        spacing: 2
//                                        anchors{
//                                            left: parent.left
//                                            leftMargin: 10
//                                            topMargin: 10
//                                            top: parent.top
//                                        }
//                                        Label {
//                                            opacity: 0.87
//                                            font.pointSize: 8
//                                            text: qsTr("15.01.2023")
//                                            font.weight: Font.Medium
//                                            color: "#334681"
//                                        }
//                                        Label {
//                                            opacity: 0.87
//                                            font.pointSize: 10
//                                            text: qsTr("Mega Seminar")
//                                            font.weight: Font.Medium
//                                            color: "#334681"
//                                        }
//                                        Label {
//                                            opacity: 0.87
//                                            font.pointSize: 8
//                                            text: qsTr("09 Member Joining")
//                                            font.weight: Font.Medium
//                                            color: "#334681"
//                                        }
//                                    }

//                                    PrefsButton{
//                                        width:  35
//                                        height: 35
//                                        buttonText: "⋮"
//                                        innerText.color: "black"
//                                        color: "#ffffff"
//                                        hoverColor: "#ffffff"
//                                        pressColor: "#ffffff"
//                                        borderColor: "#ffffff"
//                                        fontSize: 18
//                                        borderWidth: 1
//                                        borderRadius: 8
//                                        onClicked: {
//                                        }
//                                        anchors{
//                                            right: parent.right
//                                            rightMargin: 10
//                                            topMargin:  10
//                                            top: parent.top
//                                        }
//                                    }

//                                    ListView{
//                                        width: parent.width * 0.6
//                                        height: 35
//                                        orientation: Qt.Horizontal
//                                        spacing: 5
//                                        model: SideListModel{}
//                                        clip: true
//                                        anchors{
//                                            left: parent.left
//                                            leftMargin: 10
//                                            bottomMargin: 10
//                                            bottom: parent.bottom
//                                        }

//                                        delegate: PrefsButton{
//                                            width:  35
//                                            height: 35
//                                            buttonText: "🙍‍";
//                                            innerText.color: "black"
//                                            color: "#ffd545"
//                                            hoverColor: "#ffd545"
//                                            pressColor: "#ffd545"
//                                            borderColor: "#ffd545"
//                                            fontSize: 14
//                                            borderWidth: 1
//                                            borderRadius: 8
//                                            onClicked: {
//                                            }
//                                        }
//                                    }


//                                    PrefsButton{
//                                        width:  35
//                                        height: 35
//                                        buttonText: "+";
//                                        innerText.color: "black"
//                                        color: "#ffffff"
//                                        hoverColor: "#ffffff"
//                                        pressColor: "#ffffff"
//                                        borderColor: "#ffffff"
//                                        fontSize: 14
//                                        borderWidth: 1
//                                        borderRadius: 8
//                                        onClicked: {
//                                        }
//                                        anchors{
//                                            right: parent.right
//                                            rightMargin: 10
//                                            bottomMargin: 10
//                                            bottom: parent.bottom
//                                        }
//                                    }
//                                }
//                            }
//                            RowLayout{
//                                spacing: 20
//                                Layout.alignment: Qt.AlignBottom
//                                Layout.fillWidth: true
//                                Layout.preferredHeight: layout.height* 0.10

//                                Rectangle{
//                                    Layout.alignment: Qt.AlignBottom
//                                    Layout.fillWidth: true
//                                    Layout.preferredHeight: layout.height* 0.10
//                                    color: "#f7f7f9"
//                                    radius: 12
//                                    clip: true
//                                    RowLayout{
//                                        anchors{
//                                            left: parent.left
//                                            leftMargin: 10
//                                            verticalCenter: parent.verticalCenter
//                                        }
//                                        PrefsButton{
//                                            width:  35
//                                            height: 35
//                                            buttonText: "🔔";
//                                            innerText.color: "black"
//                                            color: "#ffffff"
//                                            hoverColor: "#ffffff"
//                                            pressColor: "#ffffff"
//                                            borderColor: "#ffffff"
//                                            fontSize: 14
//                                            borderWidth: 1
//                                            borderRadius: 8
//                                            onClicked: {
//                                            }
//                                        }
//                                        Label {
//                                            opacity: 0.87
//                                            font.pointSize: 10
//                                            text: qsTr("More details about ")
//                                            font.weight: Font.Medium
//                                            color: "#334681"
//                                        }
//                                    }

//                                    PrefsButton{
//                                        width:  35
//                                        height: 35
//                                        buttonText: "👉";
//                                        innerText.color: "black"
//                                        color: "#ffffff"
//                                        hoverColor: "#ffffff"
//                                        pressColor: "#ffffff"
//                                        borderColor: "#ffffff"
//                                        fontSize: 14
//                                        borderWidth: 1
//                                        borderRadius: 8
//                                        onClicked: {
//                                        }
//                                        anchors{
//                                            right: parent.right
//                                            rightMargin: 10
//                                            verticalCenter: parent.verticalCenter
//                                        }
//                                    }
//                                }

//                                Rectangle{
//                                    Layout.alignment: Qt.AlignBottom
//                                    Layout.fillWidth: true
//                                    Layout.preferredHeight: layout.height* 0.10
//                                    color: "#f7f7f9"
//                                    radius: 12
//                                    clip: true

//                                    RowLayout{
//                                        anchors{
//                                            left: parent.left
//                                            leftMargin: 10
//                                            verticalCenter: parent.verticalCenter
//                                        }
//                                        PrefsButton{
//                                            width:  35
//                                            height: 35
//                                            buttonText: "🔔";
//                                            innerText.color: "black"
//                                            color: "#ffffff"
//                                            hoverColor: "#ffffff"
//                                            pressColor: "#ffffff"
//                                            borderColor: "#ffffff"
//                                            fontSize: 14
//                                            borderWidth: 1
//                                            borderRadius: 8
//                                            onClicked: {
//                                            }
//                                        }
//                                        Label {
//                                            opacity: 0.87
//                                            font.pointSize: 10
//                                            text: qsTr("More details about ")
//                                            font.weight: Font.Medium
//                                            color: "#334681"
//                                        }
//                                    }


//                                    PrefsButton{
//                                        width:  35
//                                        height: 35
//                                        buttonText: "👉";
//                                        innerText.color: "black"
//                                        color: "#ffffff"
//                                        hoverColor: "#ffffff"
//                                        pressColor: "#ffffff"
//                                        borderColor: "#ffffff"
//                                        fontSize: 14
//                                        borderWidth: 1
//                                        borderRadius: 8
//                                        onClicked: {
//                                        }
//                                        anchors{
//                                            right: parent.right
//                                            rightMargin: 10
//                                            verticalCenter: parent.verticalCenter
//                                        }
//                                    }
//                                }
//                            }
//                        }
//                    }
//                }

//                Rectangle {
//                    id:rightSide
//                    SplitView.fillWidth: true
//                    color: "#24233c"
//                    clip: true
//                    radius: 6
//                    Image{
//                        Layout.alignment: Qt.AlignTop
//                        sourceSize.width: parent.width
//                        sourceSize.height: parent.height
//                        source: "qrc:/Img/Basic/home.png"
//                    }
//                    Rectangle{
//                        width: parent.width
//                        height:rightSide.height * 0.25
//                        color: "transparent"
//                        anchors{
//                            top: parent.top
//                            topMargin: 20
//                            horizontalCenter: parent.horizontalCenter
//                        }

//                        RowLayout{
//                            spacing: 10
//                            anchors{
//                                left: parent.left
//                                leftMargin: 10
//                                top: parent.top
//                            }
//                            PrefsButton{
//                                width:  45
//                                height: 45
//                                buttonText: "📧";
//                                innerText.color: "black"
//                                color: "white"
//                                hoverColor: "white"
//                                pressColor: "white"
//                                borderColor: "white"
//                                fontSize: 14
//                                borderWidth: 1
//                                borderRadius: 8
//                                onClicked: {
//                                }
//                            }
//                            PrefsButton{
//                                width:  45
//                                height: 45
//                                buttonText: "🔔";
//                                innerText.color: "black"
//                                color: "white"
//                                hoverColor: "white"
//                                pressColor: "white"
//                                borderColor: "white"
//                                fontSize: 14
//                                borderWidth: 1
//                                borderRadius: 8
//                                onClicked: {
//                                }
//                            }
//                        }

//                        PrefsButton{
//                            anchors{
//                                right: parent.right
//                                rightMargin: 10
//                                top: parent.top
//                            }

//                            width:  45
//                            height: 45
//                            buttonText: "👨‍💻";
//                            innerText.color: "black"
//                            color: "white"
//                            hoverColor: "white"
//                            pressColor: "white"
//                            borderColor: "white"
//                            fontSize: 14
//                            borderWidth: 1
//                            borderRadius: 8
//                            onClicked: {
//                            }
//                        }

//                    }

//                    Rectangle{
//                        width: parent.width
//                        height:rightSide.height * 0.25
//                        color: "transparent"
//                        anchors{
//                            bottom: parent.bottom
//                            bottomMargin: 20
//                            horizontalCenter: parent.horizontalCenter
//                        }
//                        Rectangle{
//                            width: parent.width * 0.9
//                            height: 2
//                            color: "#cacad0"
//                            anchors{
//                                top: parent.top
//                                topMargin: 5
//                                horizontalCenter: parent.horizontalCenter
//                            }
//                        }

//                        ColumnLayout{
//                            spacing: 10
//                            anchors.centerIn: parent
//                            RowLayout{
//                                Layout.leftMargin: 5
//                                Layout.alignment: Qt.AlignLeft
//                                PrefsButton{
//                                    width:  35
//                                    height: 35
//                                    buttonText: "🏤";
//                                    innerText.color: "black"
//                                    color: "transparent"
//                                    hoverColor: "transparent"
//                                    pressColor: "transparent"
//                                    borderColor: "transparent"
//                                    fontSize: 14
//                                    borderWidth: 1
//                                    borderRadius: 8
//                                    onClicked: {
//                                    }
//                                }
//                                Label {
//                                    opacity: 0.87
//                                    font.pointSize: 10
//                                    text: qsTr("IMT Manesar, Gurugram India. ")
//                                    font.weight: Font.Medium
//                                    color: "white"
//                                }
//                            }
//                            RowLayout{
//                                Layout.leftMargin: 5
//                                Layout.alignment: Qt.AlignLeft
//                                PrefsButton{
//                                    width:  35
//                                    height: 35
//                                    buttonText: "📱";
//                                    innerText.color: "black"
//                                    color: "transparent"
//                                    hoverColor: "transparent"
//                                    pressColor: "transparent"
//                                    borderColor: "transparent"
//                                    fontSize: 14
//                                    borderWidth: 1
//                                    borderRadius: 8
//                                    onClicked: {
//                                    }
//                                }
//                                Label {
//                                    opacity: 0.87
//                                    font.pointSize: 10
//                                    text: qsTr("mob: +91 8305516312")
//                                    font.weight: Font.Medium
//                                    color: "white"
//                                }
//                            }
//                            RowLayout{
//                                Layout.leftMargin: 5
//                                Layout.alignment: Qt.AlignLeft
//                                PrefsButton{
//                                    width:  35
//                                    height: 35
//                                    buttonText: "📧";
//                                    innerText.color: "black"
//                                    color: "transparent"
//                                    hoverColor: "transparent"
//                                    pressColor: "transparent"
//                                    borderColor: "transparent"
//                                    fontSize: 14
//                                    borderWidth: 1
//                                    borderRadius: 8
//                                    onClicked: {
//                                    }
//                                }
//                                Label {
//                                    opacity: 0.87
//                                    font.pointSize: 10
//                                    text: qsTr("mail: akshworkmail@gmail.com")
//                                    font.weight: Font.Medium
//                                    color: "white"
//                                }
//                            }
//                        }

//                        Rectangle{
//                            width: parent.width * 0.9
//                            height: 2
//                            color: "#cacad0"
//                            anchors{
//                                bottom:  parent.bottom
//                                bottomMargin: 5
//                                horizontalCenter: parent.horizontalCenter
//                            }
//                        }
//                    }
//                }
//            }

        }
    }

}
