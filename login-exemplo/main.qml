import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 1050
    height: 700
    visible: true
    title: qsTr("Login")

    Row {
        id: row
        anchors.fill: parent

        Rectangle {
            id: leftText

            width: parent.width * 0.4
            height: parent.height


            color: "#201b2c"

            Text {
                id: leftMessage

                anchors.centerIn: parent
                width: parent.width

                text: qsTr("Desenvolvendo uma tela de login eficiente com QML")
                horizontalAlignment: Text.AlignHCenter
                wrapMode: Text.WordWrap
                padding: 15

                color: "#00ff88"

                font {
                    pixelSize: parent.width * 0.1
                    family: 'Courier'
                    bold: true
                }
            }
        }

        Rectangle {
            id: cardContainer

            color: "#2f2841"
            height: parent.height
            width: parent.width * 0.6

           LoginCard {
               id: card

               height: parent.height * 0.75
               width: parent.width * 0.75

               anchors.centerIn: parent
           }

           Text {
               id: copy

               text: "DevNiverse"

               font {
                   pixelSize: 12
                   family: 'Courier'
                   bold: true
               }

               anchors {
                   horizontalCenter: parent.horizontalCenter
                   bottom: parent.bottom
                   bottomMargin: 10
               }

               color: "#00ff88"

           }
        }
    }
}
