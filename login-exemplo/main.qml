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
        //loginScreen.visible = false
        successScreen.visible = true
    }

//    LoginScreen {
//        id: loginScreen

//        anchors.fill: parent

//        onLoginSuccess: {
//            app.showSuccessScreen()
//        }
//    }

    SuccessScreen {
        id: successScreen

        anchors.fill: parent
        //visible: false
    }
}
