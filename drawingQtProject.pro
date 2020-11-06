QT += quickcontrols2 \
    widgets \
    core

CONFIG += \
    c++11 \
    qmltypes

DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
        src/main.cpp


RESOURCES += \
    qml/qml.qrc \
    res/images/images.qrc \
    res/fonts/fonts.qrc \
    imports/imports.qrc \
    conf/conf.qrc

TRANSLATIONS += \
    translations/drawingQtProject_es_ES.ts

OTHER_FILES += \
    README.md

INCLUDEPATH += \
    src \
    qml \

QML_IMPORT_PATH = $$PWD/imports
QML_IMPORT_MAJOR_VERSION = 1
QML_IMPORT_NAME = awlobo.imports

# Additional import path used to resolve QML modules just for Qt Quick Designer
QML_DESIGNER_IMPORT_PATH =

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

ANDROID_ABIS = armeabi-v7a

QT_QUICK_CONTROLS_STYLE=universal ./app

HEADERS +=

DISTFILES += \
    qml/*.qml

