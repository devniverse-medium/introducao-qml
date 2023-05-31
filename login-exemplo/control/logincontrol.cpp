#include "logincontrol.h"

LoginControl::LoginControl( QObject* parent ) :
    QObject{ parent } {}

void LoginControl::doLogin( const QString& email, const QString& password ) {

    if ( email == "admin@gmail.com" && password == "admin" ) {

        emit success();

    } else {

        emit fail( "E-mail e/ou senha incorreta" );

    }

}
