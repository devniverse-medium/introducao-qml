#ifndef CONTROL_H
#define CONTROL_H

#include <QObject>

class Control : public QObject {
    Q_OBJECT
    Q_PROPERTY( QString output READ output NOTIFY outputChanged )
public:
    explicit Control( QObject* parent = nullptr );

    QString output() const;
    void setOutput( const QString& output );

    Q_INVOKABLE void reset();

public slots:
    void doSay( const QString& msg );
    void doVerify( const QString& text );

signals:
    void outputChanged();
    void say( const QString& msg );

private:
    QString _output;

};

#endif // CONTROL_H
