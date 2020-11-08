import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Layouts 1.12
import QtQuick.Controls.Material 2.12
import QtQuick.Controls 2.12

ApplicationWindow {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Material.theme: Material.Light

    Frame {
        width: 100; height: 100

        Rectangle {
            anchors.fill: parent
            objectName: "rect"

            Label{
                text:setName()
                anchors.centerIn: parent

                function setName(){
                    return "HELLO world"
                }
            }
        }
    }
}
