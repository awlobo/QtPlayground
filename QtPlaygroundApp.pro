QT += quickcontrols2

CONFIG += c++11

DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
        src/main.cpp

RESOURCES += \
        qml/qml.qrc \
        conf/conf.qrc \
        res/images.qrc

TRANSLATIONS += \
    translations/QtPlaygroundApp_es_ES.ts

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Additional import path used to resolve QML modules just for Qt Quick Designer
QML_DESIGNER_IMPORT_PATH =

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

DISTFILES += \
    README.md \

ANDROID_ABIS = armeabi-v7a
