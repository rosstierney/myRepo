#-------------------------------------------------
#
# Project created by QtCreator 2015-01-30T19:58:52
#
#-------------------------------------------------

TEMPLATE = lib
CONFIG += qt plugin

TARGET = Library


SOURCES += \
    ../../Documents/Library/Character.cpp \
    ../../Documents/Library/Command.cpp \
    ../../Documents/Library/CommandWords.cpp \
    ../../Documents/Library/item.cpp \
    ../../Documents/Library/Parser.cpp \
    ../../Documents/Library/Room.cpp \
    ../../Documents/Library/ZorkUL.cpp

HEADERS +=\
    ../../Documents/Library/Character.h \
    ../../Documents/Library/Command.h \
    ../../Documents/Library/CommandWords.h \
    ../../Documents/Library/item.h \
    ../../Documents/Library/Parser.h \
    ../../Documents/Library/Room.h \
    ../../Documents/Library/ZorkUL.h


DISTFILES = qmldir

!equals(_PRO_FILE_PWD_, $$OUT_PWD) {
    copy_qmldir.target = $$OUT_PWD/qmldir
    copy_qmldir.depends = $$_PRO_FILE_PWD_/qmldir
    copy_qmldir.commands = $(COPY_FILE) \"$$replace(copy_qmldir.depends, /, $$QMAKE_DIR_SEP)\" \"$$replace(copy_qmldir.target, /, $$QMAKE_DIR_SEP)\"
    QMAKE_EXTRA_TARGETS += copy_qmldir
    PRE_TARGETDEPS += $$copy_qmldir.target
}

qmldir.files = qmldir
unix {
    installPath = $$[QT_INSTALL_QML]/$$replace(uri, \\., /)
    qmldir.path = $$installPath
    target.path = $$installPath
    INSTALLS += target qmldir
}


