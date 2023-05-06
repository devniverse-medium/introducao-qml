import QtQuick 2.15

Column {
    id: root

    height: 640
    width: 480

    Rectangle {
        id: firstElement

        width: parent.width
        height: parent.height/2
        color: "red"

        Text {
            text: "Elemento 1"
            color: "white"
        }
    }

    Rectangle {
        id: secondElement

        width: parent.width
        height: parent.height/2
        color: "blue"

        Text {
            text: "Elemento 2"
            color: "white"
        }
    }
}
