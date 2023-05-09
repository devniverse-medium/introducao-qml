import QtQuick 2.15

/*
    Repare que, diferente do ItemLayout, não é preciso ancorar os retângulos no cabeçalho ou rodapé da tela, e
    mesmo assim eles ficarão alocados um embaixo do outro, ocupando 50% da altura da tela

    Isso acontece por conta da disposição automática do layout em coluna. Todos os elementos que forem adicionados
    serão alocados um abaixo do outro
*/


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
