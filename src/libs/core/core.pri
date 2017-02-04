ZEAL_LIB_NAME = Core

QT += network

unix:!macx {
    CONFIG += link_pkgconfig
    PKGCONFIG += libarchive
}
win32: {
    LIBS += -larchive_static -lz
}

macx-clang: {
    INCLUDEPATH += -I/usr/local/opt/libarchive/include
    LIBS += -L/usr/local/opt/libarchive/lib -larchive
    INCLUDEPATH += -I/usr/local/opt/sqlite/include
    LIBS += -L/usr/local/opt/sqlite/lib -lsqlite3
}