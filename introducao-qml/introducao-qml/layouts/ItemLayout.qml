import QtQuick 2.15

/*
    Por não ter uma disposição automática, quando dois ou mais elementos são adicionados e não têm a posição definida
    eles ficarão sobrepostos, tendo o último elemento adicionado como o primeiro da pilha, e o que vai estar visível.

    É possível verificar isso removendo as linhas 24 e 40 deste código. O único elemento a aparecer em tela será o elemento 2.
*/

Item {
    id: root

    height: 640
    width: 480

    Rectangle {
        id: firstElement

        width: parent.width/2
        height: parent.height
        color: "red"

        //definindo que o elemento deve ficar alinhado à ESQUERDA de seu parent
        anchors.left: parent.left

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

        //definindo que o elemento deve ficar alinhado à DIREITA de seu parent
        anchors.right: parent.right

        Text {
            text: "Elemento 2"
            color: "white"
        }
    }
}
