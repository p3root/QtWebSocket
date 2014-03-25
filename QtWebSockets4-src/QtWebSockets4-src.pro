QT += core network
QT -= gui

TARGET = QWebSocket
TEMPLATE = lib

CONFIG += sharedlib

DEFINES += QWEBSOCKTES_LIBRARY

HEADERS_QT4 +=
SOURCES_QT4 +=

equals(QT_MAJOR_VERSION, 4) {
    HEADERS_QT4 += \
        ../src/websockets/qwebsockets_global.h \
        ../src/websockets/qwebsocket4.h \
        ../src/websockets/qwebsocket.h \
        ../src/websockets/qwebsocketserver.h \
        ../src/websockets/qwebsocketprotocol.h \
        ../src/websockets/qwebsocketcorsauthenticator.h \
        ../src/websockets/qwebsocket_p.h \
        ../src/websockets/qwebsocketserver_p.h \
        ../src/websockets/qwebsocketprotocol_p.h \
        ../src/websockets/qwebsockethandshakerequest_p.h \
        ../src/websockets/qwebsockethandshakeresponse_p.h \
        ../src/websockets/qwebsocketdataprocessor_p.h \
        ../src/websockets/qwebsocketcorsauthenticator_p.h \
        ../src/websockets/qwebsocketframe_p.h

    SOURCES_QT4 += \
        ../src/websockets/qwebsocket.cpp \
        ../src/websockets/qwebsocket_p.cpp \
        ../src/websockets/qwebsocketserver.cpp \
        ../src/websockets/qwebsocketserver_p.cpp \
        ../src/websockets/qwebsocketprotocol.cpp \
        ../src/websockets/qwebsockethandshakerequest.cpp \
        ../src/websockets/qwebsockethandshakeresponse.cpp \
        ../src/websockets/qwebsocketdataprocessor.cpp \
        ../src/websockets/qwebsocketcorsauthenticator.cpp \
        ../src/websockets/qwebsocketframe.cpp

    contains(QT_CONFIG, openssl) | contains(QT_CONFIG, openssl-linked) {
        SOURCES_QT4 +=  ../src/websockets/qsslserver.cpp
        HEADERS_QT4 +=  ../src/websockets/qsslserver_p.h
    }
}

HEADERS += $$HEADERS_QT4
SOURCES += $$SOURCES_QT4

unix {
    target.path = /usr/local/lib
    INSTALLS += target
}
