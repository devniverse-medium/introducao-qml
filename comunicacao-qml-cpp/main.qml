import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12

import Control 1.0

Window {
    id: app

    width: 640
    height: 480
    visible: true
    title: qsTr("Comunicação QML com C++")

    Control {
        id: control

        onSay: function( msg ) {
            helloText.text = msg
        }
    }

    Column {
        spacing: 16
        anchors.centerIn: parent

        Row {
            spacing: 16

            TextField {
                id: myNumber
                focus: true
                placeholderText: "Informe um número"

                validator: IntValidator {
                    bottom: 1
                    top: 999999999
                }
            }

            Button {
                id: btnVerify
                text: "Verificar"

                onClicked: {

                    control.doVerify( myNumber.text )

                }
            }

            Button {
                id: btnSay
                text: "Diga hello!"

                onClicked: {

                    control.doSay( "Hello!" )

                }
            }

        }

        Text {
            id: outputText
            text: control.output
            visible: outputText.text != ""
        }

        Text {
            id: helloText
            text: ""
            visible: helloText.text != ""
        }
    }

}
