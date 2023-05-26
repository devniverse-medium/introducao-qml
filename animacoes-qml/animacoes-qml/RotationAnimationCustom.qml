import QtQuick 2.15
import QtQuick.Controls 2.0

//o nome do arquivo nao pode ser igual à animacao, nesse caso, foi adicionado o Custom ao nome do arquivo

Rectangle {
    id: root

    width: 300
    height: 300
    color: "red"

    //o retângulo fará giros infinitos de 360 graus, cada giro durando 5 segundos
    RotationAnimation on rotation {

        //definindo a quantidade de giros a serem realizados
        loops: Animation.Infinite

        //definindo a partir de onde o objeto alvo vai girar
        from: 0

        //definindo para onde o objeto alvo vai girar
        to: 360

        //invertendo os valores de FROM e TO, oo objeto vai girar ao contrário

        duration: 5000
    }
}
