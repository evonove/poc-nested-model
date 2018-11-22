import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("Scroll")

    ListModel {
        id: myModel
        ListElement {
            category: "faa"
            elements: [
                ListElement {
                    name: "raa"
                },
                ListElement {
                    name: "Gaa"
                },
                ListElement {
                    name: "Gaa"
                },
                ListElement {
                    name: "Gaa"
                },
                ListElement {
                    name: "Gaa"
                },
                ListElement {
                    name: "Gaa"
                }
            ]
        }
        ListElement {
            category: "poo"
            elements: [
                ListElement {
                    name: "Boo"
                },
                ListElement {
                    name: "Boo"
                },
                ListElement {
                    name: "Boo"
                },
                ListElement {
                    name: "Boo"
                },
                ListElement {
                    name: "Boo"
                },
                ListElement {
                    name: "Boo"
                },
                ListElement {
                    name: "Goo"
                }
            ]
        }
        ListElement {
            category: "poo"
            elements: [
                ListElement {
                    name: "Boo"
                },
                ListElement {
                    name: "Boo"
                },
                ListElement {
                    name: "Boo"
                },
                ListElement {
                    name: "Boo"
                },
                ListElement {
                    name: "Boo"
                },
                ListElement {
                    name: "Boo"
                },
                ListElement {
                    name: "Goo"
                }
            ]
        }
    }

    ListView {
        anchors.fill: parent
        anchors.margins: 10
        spacing: 10

        model: myModel
        delegate: Pane {
            id: root

            readonly property int numElementsInRow: 3
            readonly property int currentCellWidth: Math.floor(
                                                        root.availableWidth / root.numElementsInRow)

            width: parent.width
            spacing: 0
            padding: 0

            ColumnLayout {
                anchors.fill: parent
                Rectangle {
                    id: title
                    color: "#E0B226"
                    implicitWidth: 100
                    implicitHeight: 20
                }
                GridView {
                    id: gr
                    model: elements
                    interactive: false

                    Layout.fillWidth: true
                    implicitHeight: Math.ceil(elements.count / root.numElementsInRow) * 50

                    cellHeight: 50
                    cellWidth: root.currentCellWidth
                    delegate: Pane {
                        width: gr.cellWidth
                        height: gr.cellHeight
                        spacing: 0
                        padding: 0
                        Rectangle {
                            color: "#E05E26"
                            anchors.fill: parent
                            anchors.margins: 2
                        }
                    }
                }
            }
        }
    }
}
