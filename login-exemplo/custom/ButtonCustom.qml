import QtQuick 2.15
import QtQuick.Controls

Item {
    id: root

    property string text: "Clique"
    property string primaryColor: ""
    property string textColor: ""

    signal clicked

    height: 30
    width: 120

    Button {
        anchors.fill: parent

        background: Rectangle {
            color: root.primaryColor
            radius: 8
            anchors.fill: parent
        }

        contentItem: Text {
            text: root.text
            color: root.textColor
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            elide: Text.ElideRight
            font.pixelSize: 20
        }

        onClicked: {
            root.clicked()
            console.log("a")
        }
    }
}
