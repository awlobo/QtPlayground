import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Layouts 1.12
import QtQuick.Controls.Material 2.12
import QtQuick.Controls 2.12



ApplicationWindow {
    id: root

    width: 640
    height: 480
    visible: true
    title: qsTr("DrawingQt")

//    Material.theme: themeSwitch.checked ? Material.Dark : Material.Light
    Material.theme: Material.Light

    DrawingFrame{
        id: frame
    }


}
