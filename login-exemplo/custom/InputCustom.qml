import QtQuick 2.12

Column {
    id: container

    spacing: 5
    height: 80
    width: 120

    property string borderColor: ""
    property string placeholder: ""
    property string label: ""
    property int echoMode: TextInput.Normal

    property string _text: ""

    Text {
        text: container.label
        font.family: "Noto Sans"
    }


    Rectangle {
        id: root

        height: parent.height
        width: parent.width
        radius: 8

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

            onTextChanged: {
                container._text = text
            }
        }
    }
}

