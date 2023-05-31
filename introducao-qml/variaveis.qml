import QtQuick 2.15

Item {
    id: root

    width: 480
    height: 640

    //tipos numericos
    property int idade: 25
    property real altura: 1.75
    property real notacaoCientifica: 2.5e-3

    //tipo string
    property string nome: "DEVNIVERSE"

    //tipo booleano
    property bool mereceLike: true
    property bool ignorarArtigo: false

    //arrays
    property var membros: ["Kielson Zinn", "Ângelo Hank"]

    //objetos
    property var carro: {
        modelo: "golf",
        rebaixado: true
    }
}
