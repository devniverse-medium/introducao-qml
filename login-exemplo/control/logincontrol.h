#ifndef LOGINCONTROL_H
#define LOGINCONTROL_H

#include <QObject>

class LoginControl : public QObject {
    Q_OBJECT
public:
    explicit LoginControl( QObject* parent = nullptr );

public slots:
    void doLogin( const QString& email, const QString& password );

signals:
    void success();
    void fail( const QString& msg );

};

#endif // LOGINCONTROL_H
