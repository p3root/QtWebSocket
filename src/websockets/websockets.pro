TARGET = QtWebSockets

QT += core network

TEMPLATE = lib

DEFINES += QTWEBSOCKETS_LIBRARY

CONFIG += sharedlib

HEADERS_QT5 +=
SOURCES_QT5 +=

equals(QT_MAJOR_VERSION, 5) {
    HEADERS_QT5 += \
        $$PWD/qwebsockets_global.h \
        $$PWD/qwebsocket.h \
        $$PWD/qwebsocketserver.h \
        $$PWD/qwebsocketprotocol.h \
        $$PWD/qwebsocketcorsauthenticator.h \
        $$PWD/qwebsocket_p.h \
        $$PWD/qwebsocketserver_p.h \
        $$PWD/qwebsocketprotocol_p.h \
        $$PWD/qwebsockethandshakerequest_p.h \
        $$PWD/qwebsockethandshakeresponse_p.h \
        $$PWD/qwebsocketdataprocessor_p.h \
        $$PWD/qwebsocketcorsauthenticator_p.h \
        $$PWD/qwebsocketframe_p.h

    SOURCES_QT5 += \
        $$PWD/qwebsocket.cpp \
        $$PWD/qwebsocket_p.cpp \
        $$PWD/qwebsocketserver.cpp \
        $$PWD/qwebsocketserver_p.cpp \
        $$PWD/qwebsocketprotocol.cpp \
        $$PWD/qwebsockethandshakerequest.cpp \
        $$PWD/qwebsockethandshakeresponse.cpp \
        $$PWD/qwebsocketdataprocessor.cpp \
        $$PWD/qwebsocketcorsauthenticator.cpp \
        $$PWD/qwebsocketframe.cpp

    contains(QT_CONFIG, openssl) | contains(QT_CONFIG, openssl-linked) {
        SOURCES_QT5 += $$PWD/qsslserver.cpp
        HEADERS_QT5 += $$PWD/qsslserver_p.h
    }
}

HEADERS += $$HEADERS_QT5
SOURCES += $$SOURCES_QT5

