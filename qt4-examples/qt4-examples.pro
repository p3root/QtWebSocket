TEMPLATE = subdirs

SUBDIRS = echoclient \
          echoserver \
          simplechat

contains(QT_CONFIG, openssl) | contains(QT_CONFIG, openssl-linked) {
SUBDIRS +=  \
            sslechoserver \
            sslechoclient
}
