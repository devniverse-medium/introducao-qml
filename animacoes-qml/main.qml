import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.0

/*
    No código abaixo existem 4 diferentes tipos de animação.
    Para vê-las funcionando separadamente, basta comentar o trecho de uma e descomentar o de outra

    Explicações mais detalhadas estão dentro do componente de cada uma
*/

Window {
    id: app

    width: 640
    height: 480
    visible: true
    title: qsTr("Animações em QML")
    color: "#FFFAFA"


    //Retangulo que vai percorrer, horizontalmente, a tela, com uma duraçao de 3 segundos
//    MovingAnimation {
//        id: movingAnimation

//        _to: app.width - movingAnimation.width
//        anchors.verticalCenter: parent.verticalCenter
//    }


    //Retangulo que vai girar 360 graus infinitamente
    RotationAnimationCustom {
        id: movingAnimation

        anchors.centerIn: parent
    }


    //Alterando a cor de um retângulo de maneira progressiva
    /*ColorAnimationCustom {
        anchors.centerIn: parent
    }*/


    //loading que vai percorrer todo o comprimento da tela
    /*LoadingAnimation {
        id: loadingAnimation

        _to: app.width
        anchors.bottom: parent.bottom

    }*/
}
