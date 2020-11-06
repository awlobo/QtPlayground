import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12
import QtQuick.Controls.Material 2.12

Frame {

    width: 100; height: 100

      Rectangle {
          anchors.fill: parent
          objectName: "rect"

          Label{
              text:setName()
              anchors.centerIn: parent
          }
      }

      function setName(){
          return "HELLO world"
      }
}
