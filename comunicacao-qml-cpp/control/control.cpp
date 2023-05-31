#include "control.h"

Control::Control( QObject* parent ) :
    QObject{ parent },
    _output{ "" } {}

QString Control::output() const {
    return _output;
}

void Control::setOutput( const QString& output ) {
    if ( _output == output ) {
        return;
    }

    _output = output;
    emit outputChanged();
}

void Control::reset() {
    setOutput( "" );
}

void Control::doSay( const QString& msg ) {
    emit say( msg );
}

void Control::doVerify( const QString& text ) {

    int number = text.toInt();

    if ( number % 2 == 0 ) {

        setOutput( "Número é par!" );

    } else {

        setOutput( "Número é impar!" );

    }

    emit outputChanged();

}
