import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12
import QtQuick.Controls.Material 2.12

ApplicationWindow {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Material.theme: Material.Light
    //    Material.foreground: Material.color(Material.Red)

    Rectangle{
        Layout.fillWidth: true
        Layout.fillHeight: true

        Button {
            id: lightRed
            text: "Press me"
            highlighted: true
            anchors.leftMargin: 20
            anchors.topMargin: 20
            anchors.left: parent.left
            anchors.top: parent.top
            Material.elevation: 1
        }
    }
}
