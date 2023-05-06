import QtQuick 2.15
import QtQuick.Window 2.15

import "./layouts"

Window {
    id: root

    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle {
        id: retanguloExemplo

        height: 320
        width: 240
        anchors.centerIn: parent
        color: "#696969"

        Text {
            text: "Olá mundo!"
            color: "white"
            wrapMode: Text.WordWrap
            anchors.centerIn: parent
        }
    }
}
