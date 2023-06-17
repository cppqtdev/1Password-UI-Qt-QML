//Import the declarative plugins
import QtQuick 2.0
import QtQuick.Layouts 1.3
//Implementation of the Button control.
Item {
    id: button
    width: 30
    height: 30
    property alias buttonText: innerText.text;
    property alias innerText: innerText
    property alias buttonText2: innerText2.text;
    property alias innerText2: innerText2
    property color color: "transparent"
    property color hoverColor: "#aaaaaa"
    property color pressColor: "slategray"
     property color borderColor: "white"
    property string sourceIcon: ""
    property int fontSize: 16
    property int borderWidth: 1
    property int borderRadius: 2
    property int iconWidth: 20
    property int iconHeight: 20
    scale: state === "Pressed" ? 0.95 : 1.0
    onEnabledChanged: state = ""
    property bool iconButton: false
    signal clicked

    //define a scale animation
    Behavior on scale {
        NumberAnimation {
            duration: 100
            easing.type: Easing.InOutQuad
        }
    }

    //Rectangle to draw the button
    Rectangle {
        id: rectangleButton
        anchors.fill: parent
        radius: borderRadius
        color: button.enabled ? button.color : "grey"
        border.width: borderWidth
        border.color:borderColor
        visible: !iconButton
        Image{
            source:sourceIcon
            sourceSize: Qt.size(iconWidth,iconHeight)
            anchors.centerIn: parent
            clip: true
            smooth: true
            opacity: 0.54
        }

        Text {
            id: innerText
            font.pointSize: fontSize
            anchors.centerIn: parent
            visible: text
        }
    }
    Rectangle {
        id: rectangleButton2
        anchors.fill: parent
        radius: borderRadius
        color: button.enabled ? button.color : "grey"
        border.width: borderWidth
        border.color:borderColor
        visible: iconButton
        ColumnLayout{
            Layout.fillWidth: true
            Layout.fillHeight: true
            anchors.centerIn: parent
            Image{
                source:sourceIcon
                sourceSize: Qt.size(iconWidth,iconHeight)
                clip: true
                smooth: true
                opacity: 0.54
                Layout.alignment: Qt.AlignHCenter
            }

            Text {
                id: innerText2
                font.pointSize: fontSize
                visible: text
                Layout.alignment: Qt.AlignHCenter
            }
        }
    }

    //change the color of the button in differen button states
    states: [
        State {
            name: "Hovering"
            PropertyChanges {
                target:iconButton ? rectangleButton2 : rectangleButton
                color: hoverColor
            }
        },
        State {
            name: "Pressed"
            PropertyChanges {
                target: iconButton ? rectangleButton2 : rectangleButton
                color: pressColor
            }
        }
    ]

    //define transmission for the states
    transitions: [
        Transition {
            from: ""; to: "Hovering"
            ColorAnimation { duration: 200 }
        },
        Transition {
            from: "*"; to: "Pressed"
            ColorAnimation { duration: 10 }
        }
    ]

    //Mouse area to react on click events
    MouseArea {
        hoverEnabled: true
        anchors.fill: button
        onEntered: { button.state='Hovering'}
        onExited: { button.state=''}
        onClicked: { button.clicked();}
        onPressed: { button.state="Pressed" }
        onReleased: {
            if (containsMouse)
              button.state="Hovering";
            else
              button.state="";
        }
    }
}
