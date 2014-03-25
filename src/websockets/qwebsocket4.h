#ifndef QWEBSOCKET_FOUR_H
#define QWEBSOCKET_FOUR_H

#if QT_VERSION <= QT_VERSION_CHECK(5, 2, 0)

    #include <stdlib.h>
    #include <QString>
    #define Q_NULLPTR 0
    typedef size_t size_type;
    typedef qint32 qintptr;

    #ifndef QStringLiteral
        #define QStringLiteral(str) QString::fromLocal8Bit(str)
    #endif
    #ifndef QByteArrayLiteral
        #define QByteArrayLiteral(str) QByteArray(str)
    #endif

#endif

#endif // QWEBSOCKET_FOUR_H
