import QtQuick 2.15

Rectangle {
    id: root

    width: 1050
    height: 700

    color: "#201b2c"

    Column {
        anchors.fill: parent
        spacing: 15

        Text {
            text: "Parabéns!!!\nVocê acessou o sistema com sucesso"
            font.family: 'Courier'
            font.pixelSize: 50
            horizontalAlignment: Text.AlignHCenter
            anchors.centerIn: parent
            color: "#00ff88"
        }
    }
}
