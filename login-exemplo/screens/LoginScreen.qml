import QtQuick 2.15

import "../custom"

Rectangle {
    id: root

    property string msg_email_fora_do_padrao: "O email informado não segue os padrões necessários"
    property string msg_email_nao_informado: "Email não informado"
    property string msg_senha_nao_informada: "Informe ao menos um caracter no campo de senha"

    signal loginSuccess

    width: 1050
    height: 700

    function checkEmail( email ) {

        if ( email.length < 1 ) {
            errorLabel.text = msg_email_nao_informado
            return false
        }

        //utilizando expressão regular para verificar se o email está de acordo com os seguintes padrões:

        /*
        Começa com um ou mais caracteres alfanuméricos, pontos, traços, porcentagens ou sinais de adição ou subtração.
        Seguido pelo caractere "@".
        Seguido por um ou mais caracteres alfanuméricos, pontos ou traços.
        Seguido pelo caractere ".".
        Termina com dois ou mais caracteres alfabéticos.
        */

        var padrao = /^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$/;
        errorLabel.text = root.msg_email_fora_do_padrao
        return padrao.test(email);
    }

    function checkPassword( password ) {
        if ( password.length < 1 ) {
            errorLabel.text = root.msg_senha_nao_informada
            return false
        }

        return true
    }

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

           LoginCardCustom {
               id: card

               height: parent.height * 0.75
               width: parent.width * 0.75

               anchors.centerIn: parent

               onSubmit: function( email, password ) {

                   errorLabel.visible = false

                   var loginValido = checkEmail( email ) && checkPassword( password )

                   if ( !loginValido ) {
                       errorLabel.visible = true
                       return
                   }

                   root.loginSuccess()

                   //TODO
                   //implementar e chamar outra tela caso o login seja válido
               }

               Text {
                   id: errorLabel

                   text: "Email ou senha inválidos"

                   font {
                       pixelSize: 12
                       family: 'Courier'
                       bold: true
                   }

                   anchors {
                       bottom: parent.bottom
                       bottomMargin: 15
                       horizontalCenter: parent.horizontalCenter
                   }

                   color: "#000000"
                   visible: false
               }

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
