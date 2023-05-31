import QtQuick 2.15

/*
    Repare que, diferente do ItemLayout, não é preciso ancorar os retângulos à esquerda ou à direita, e
    mesmo assim eles ficarão alinhados um ao lado do outro, ocupando 50% da largura da tela

    Isso acontece por conta da disposição automática do layout em linha. Todos os elementos que forem adicionados
    serão alocados lado a lado
*/

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
