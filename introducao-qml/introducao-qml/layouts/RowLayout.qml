import QtQuick 2.15

Row {
    id: root

    height: 640
    width: 480

    Rectangle {
        id: firstElement

        width: parent.width/2
        height: parent.height
        color: "red"

        Text {
            text: "Elemento 1"
            color: "white"
        }
    }

    Rectangle {
        id: secondElement

        width: parent.width/2
        height: parent.height
        color: "blue"

        Text {
            text: "Elemento 2"
            color: "white"
        }
    }
}
