// Button.qml
import QtQuick 2.15

Rectangle {
    id: button
    width: 100; height: 50
    color: "blue"

    property alias text: textElement.text

    signal clicked

    Text {
        id: textElement
        anchors.centerIn: parent
        text: "Click Me"
    }

    MouseArea {
        id: mouseArea
        anchors.fill: parent
        onClicked: {
            button.clicked()
        }
    }
}
