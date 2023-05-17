import QtQuick 2.15

import "./custom"

Rectangle {
    id: root

    property string primaryColor: "#FFFFFF"
    property string title: "Bem vindo"

    height: 120
    width: 120
    radius: 8

    color: root.primaryColor

    Column {
        anchors.fill: parent
        anchors.topMargin: 50
        spacing: 50

        Text {
            id: title
            text: root.title
            anchors.horizontalCenter: parent.horizontalCenter

            font {
                pixelSize: 50
                family: 'Courier'
            }
        }

        InputCustom {
            id: email

            borderColor: "#514869"
            width: parent.width * 0.9
            height: parent.height * 0.1
            anchors.horizontalCenter: parent.horizontalCenter

            label: "Email"
        }

        InputCustom {
            id: senha

            borderColor: "#514869"
            width: parent.width * 0.9
            height: parent.height * 0.1
            anchors.horizontalCenter: parent.horizontalCenter
            echoMode: TextInput.Password

            label: "Senha"
        }

        ButtonCustom {
            id: loginButton

            width: parent.width * 0.9
            height: parent.height * 0.15
            text: "Entrar"
            textColor: "white"
            primaryColor: "#514869"
            anchors.horizontalCenter: parent.horizontalCenter
        }
    }

}

