// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1
import com.nokia.meego 1.0
import com.nokia.extras 1.0

Rectangle {
    id: whatItem
    anchors.fill: parent

    Rectangle {
        id: line1;

        width: parent.width
        height: text_what.height
        anchors {
            left: parent.left
            top: save.bottom

            //top: label.bottom
            topMargin: 10
        }
        Text {
            id: object

            text: qsTr("Object")
            font.pixelSize: 28

        }
        TextInput {

            id: text_what
            width: parent.width - object.width
            anchors.left: object.right
            text: qsTr("Add objecto")
            font.pixelSize: 28
            onFocusChanged: { if ( text_what.activeFocus ) object.color = "orange"; else object.color= "black";}
            anchors.leftMargin: 10
        }
    }

    Rectangle {
        id: line2
        width: parent.width
        height: text_day.height
        anchors {
            left: parent.left
            top: line1.bottom

            //top: label.bottom
            topMargin: 10
        }
        Text {
            id: text_day
            anchors.left: parent.left;
            text: qsTr("Data")
            font.pixelSize: 28

        }

        Text {
            id: label_time
            anchors {
                left: text_day.right
                leftMargin: 10
            }
            text: qsTr("Start")
            font.pixelSize: 28

        }

        TextInput {

            id: text_time
            width: parent.width - text_day.width - label_time.width;
            anchors {
                left: label_time.right;
                leftMargin: 10;
            }

            text: qsTr("qqq")
            font.pixelSize: 28
            onFocusChanged: { if ( text_time.activeFocus ) { timePickerDialog.open(); console.log ("timer");} }

        }

        TimePickerDialog {
                id:timePickerDialog
                anchors.left: text_day.right
                titleText: "Select Time"
                acceptButtonText: "Confirm"
                rejectButtonText: "Reject"
                //opacity: 1
                //onAccepted: timePickerAccepted()
            }
    }
    Rectangle {
        id: line3
        width: parent.width
        height: text_where.height
        anchors {
            left: parent.left
            top: line2.bottom

            //top: label.bottom
            topMargin: 10
        }
        Text {
            id: text_w

            text: qsTr("Where")
            font.pixelSize: 28

        }
        TextInput {
            id: text_where
            anchors.left: text_w.right
            text: qsTr("text")
            font.pixelSize: 28

        }
    }
    Button {
        id: save

        width: 96
        height: 114
        anchors {
            left: parent.left
            top: parent.top

            //top: label.bottom
            topMargin: 10
        }
        text: qsTr("Save")
        onClicked: {console.log("salva")}
        //color: "#ffffff"
    }

    Button {
        id: rectangle2

        width: 96
        height: 114
        anchors {
            right: parent.right
            top: parent.top
            topMargin: 10
        }
        text: qsTr("Cancel")
        onClicked: {whatItem.opacity = 0; dayView.opacity = 1;}
        //color: "#ffffff"
    }
}
