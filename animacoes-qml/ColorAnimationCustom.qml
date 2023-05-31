import QtQuick 2.15
import QtQuick.Controls 2.0

//o nome do arquivo nao pode ser igual à animacao, nesse caso, foi adicionado o Custom ao nome do arquivo

Rectangle {
    id: root

    width: 300
    height: 300
    color: "red"

    //o retangulo passará de vermelho para uma tonalidade de verde em 2 segundos
    ColorAnimation on color {

        //definindo para qual cor a transição vai ser feita
        to: "#00FF00"

        duration: 2000
    }
}
