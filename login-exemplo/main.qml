import QtQuick 2.15
import QtQuick.Window 2.15

import "./screens"

Window {
    id: app

    width: 1050
    height: 700
    visible: true
    title: qsTr("Login")

    function showSuccessScreen() {
        myLoader.sourceComponent = screenSuccess
    }

    Loader {
        id: myLoader
        anchors.fill: parent
        sourceComponent: screenLogin
    }

    Component {
        id: screenLogin

        LoginScreen {
            anchors.fill: parent

            onLoginSuccess: {
                app.showSuccessScreen()
            }
        }
    }

    Component {
        id: screenSuccess

        SuccessScreen {
            anchors.fill: parent
        }
    }

}
