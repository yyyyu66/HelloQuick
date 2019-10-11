import QtQuick 2.0
import QtQuick.Controls 1.1
import QtQuick.Controls.Styles 1.1

Rectangle {
    id: mainrec
    visible: true
    width: 320
    height: 480
    //color: "blue"
    //color: "#112233"
    border.width: 2         //边框的宽度
    border.color: "#123456" //边框的颜色
    radius: 10              //圆角的大小
    //rotation: 90          //旋转角度

    focus: true
    Keys.enabled: true
    Keys.onEscapePressed: Qt.quit();
    Keys.onBackPressed: Qt.quit();
    Keys.onPressed: {
        switch(event.key){
                case Qt.Key_0:
                case Qt.Key_1:
                case Qt.Key_2:
                case Qt.Key_3:
                case Qt.Key_4:
                case Qt.Key_5:
                case Qt.Key_6:
                case Qt.Key_7:
                case Qt.Key_8:
                case Qt.Key_9:
                    keyView.text = event.key - Qt.Key_0;
                    break;
        }
    }
    Text{
        id: keyView
        /**文本宽度**/
        width:  100
        height: 50
        /**字体大小 颜色**/
        font.pixelSize: 18
        font.bold: true
        //font.underline: true
        color: "red"
        /**文本位置**/
        anchors.left: rectangle3.right
        anchors.leftMargin: 10
        anchors.top:  rectangle2.bottom
        anchors.topMargin: 10
        text: qsTr("hi")
    }

    Rectangle{
        id: rectangle1
        width:  40
        height: 40
        color: "green"
        anchors.left: mainrec.left
        anchors.leftMargin: 10
        anchors.top:  mainrec.top
        anchors.topMargin: 10
        z:10
        opacity: 1.0
    }

    Rectangle{
        id: rectangle2
        width:  40
        height: 40
        color: "red"
        anchors.left: rectangle1.right
        anchors.leftMargin: 10
        anchors.top:  mainrec.top
        anchors.topMargin: 10
        z:20
        opacity: 1.5
    }

    Rectangle{
        id: rectangle3
        width:  40
        height: 40
        color: "blue"
        anchors.left: mainrec.left
        anchors.leftMargin: 10
        anchors.top:  rectangle1.bottom
        anchors.topMargin: 10
        z:30
        opacity: 1.1
    }

    Text{
        font.pixelSize: 18
        font.bold: true
        color: "red"
        //rotation: -90
        style: Text.Sunken
        text:qsTr("Hello Enter Qt Quick World")
        anchors.centerIn: parent
    }

    Button{
        id: exit
        text: qsTr("退出")
        width:  60
        height: 30
        anchors.right: mainrec.right
        anchors.rightMargin: 10
        anchors.bottom:  mainrec.bottom
        anchors.bottomMargin:  10
        style: ButtonStyle{
            background: Rectangle{
                implicitHeight: 25
                implicitWidth: 70
                border.width: control.press ? 1 : 5;
                border.color: (control.hovered || control.pressed) ? "green" : "#888888"
            }
        }
        //onClicked: Qt.quit()
    }
}
