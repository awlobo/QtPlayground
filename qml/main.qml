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
    title: qsTr("Hello World")

    Material.theme: themeSwitch.checked ? Material.Dark : Material.Light

    Switch {
        id: themeSwitch
        text: "Dark"
        anchors.centerIn: parent
        checked: false
    }

    RoundButton {
        id: button
        text: qsTr("Restore")
        width: 160
        font.pixelSize: 11
        font.capitalization: Font.Capitalize
        anchors{
            right: parent.right
            verticalCenter: parent.verticalCenter
        }
        highlighted: true
        Material.accent: Material.Blue
        Material.elevation: 0
        Layout.rightMargin: 20
    }
}
