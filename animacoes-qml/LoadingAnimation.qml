import QtQuick 2.15

//Exemplo de como pode ser feito um componente de loading simples usando PropertyAnimation

Rectangle {
    id: root

    width: 1
    height: 10
    color: "red"

    property real _to: 1

    PropertyAnimation {
        //definindo o objeto afetado
        target: root

        //definindo propriedade a ser alterada
        property: "width"

        to: root._to

        duration: 3000
        running: true
    }
}
