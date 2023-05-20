import QtQuick 2.15

Rectangle {
    id: root

    width: 1050
    height: 700

    Column {
        anchors.fill: parent
        spacing: 15

        Image {
            id: img

            anchors.centerIn: parent
            //C:\Users\hanka\OneDrive\Programas e arquivos antigos\Documentos\GitHub\introducao-qml\login-exemplo
            source: "../../trofeu.png"
        }

//        Text {
//            id: msg

//            //TODO centralizar texto
//            text: "Login realizado com sucesso!\n
//            Agora você já pode construir suas próprias UIs usando o QML :)"
//        }
    }
}
