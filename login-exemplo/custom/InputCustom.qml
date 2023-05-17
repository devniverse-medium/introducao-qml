import QtQuick 2.15

Column {
    id: container

    spacing: 5
    height: 80
    width: 120

    property string borderColor: ""
    property string placeholder: ""
    property string label: ""
    property var echoMode: TextInput.Normal

    Text {
        text: container.label
        font.family: "Noto Sans"
    }


    Rectangle {
        id: root

        height: parent.height
        width: parent.width
        radius: 8
        color: transparent

        border.color: container.borderColor
        anchors.margins: 5

        TextInput {
            id: input

            anchors {
                leftMargin: 5
                right: parent.right
                left: parent.left
                verticalCenter: parent.verticalCenter
            }

            font.pixelSize: root.height * 0.6
            echoMode: container.echoMode

        }
    }
}

