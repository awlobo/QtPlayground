import QtQuick 2.0

Item{
    property int _minSide: Math.min(root.width, root.height)
    x: 10 + (root.width - _minSide) / 2
    y: 10 + (root.height - _minSide) / 2
    width: _minSide - 20
    height: _minSide - 20
    scale: Math.min(width/background.width, height/background.height)
    transformOrigin: Item.TopLeft

    Rectangle{
        id: background
        width: 250
        height: 250
        color: "lightblue"

        Rectangle{
            id: minutes
            x: background.width/2 -width/2
            y: background.height/2
            width: 5
            height: 100
            color: "black"

            transform: Rotation{
                origin.x: hours.width/2
                origin.y: 0
                angle: 90

                RotationAnimation on angle{
                    from: 0
                    to: 360*24
                    duration: 60000
                    loops: Animation.Infinite
                }
            }
        }

        Rectangle{
            id: hours
            x: background.width / 2 - width / 2
            y: background.height / 2 -5
            width: 5
            height: 50
            color: "grey"

            transform: Rotation{
                origin.x: hours.width / 2
                origin.y: 3

                RotationAnimation on angle{
                    from: 0
                    to: 360*2
                    duration: 60000
                    loops: Animation.Infinite
                }
            }
        }

        Rectangle{
            id: clockCenter
            anchors.centerIn: parent
            width: 5
            height: 5
            color: "white"
        }
    }
}
