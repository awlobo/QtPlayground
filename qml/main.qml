import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12
import QtQuick.Controls.Material 2.12
import QtQuick.Controls.Material.impl 2.12

ApplicationWindow {
    id: root
    width: 500
    height: 500
    visible: true
    color: "white"
    title: qsTr("Hello World")
    Component.onCompleted: console.log("Rectangulo %1 - %2 - %3".arg(width).arg(height).arg(title))


    Clock{}
}
