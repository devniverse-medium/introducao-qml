import QtQuick 2.15

Rectangle {
    id: root

    width: 300
    height: 300
    color: "red"

    property real _to: 300

    //A propriedade X do retângulo será alterada até chegar ao valor de _to
    NumberAnimation on x {

        //definindo o ponto de partida do objeto que vai ser afetado
        from: 0

        //definindo o ponto limite até onde o objeto afetado vai se mover
        to: root._to

        duration: 3000
    }
}
