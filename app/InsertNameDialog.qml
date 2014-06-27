/*******************************************************************************
* Copyright (c) 2013 "Filippo Scognamiglio"
* https://github.com/Swordifish90/cool-old-term
*
* This file is part of cool-old-term.
*
* cool-old-term is free software: you can redistribute it and/or modify
* it under the terms of the GNU General Public License as published by
* the Free Software Foundation, either version 3 of the License, or
* (at your option) any later version.
*
* This program is distributed in the hope that it will be useful,
* but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
* GNU General Public License for more details.
*
* You should have received a copy of the GNU General Public License
* along with this program.  If not, see <http://www.gnu.org/licenses/>.
*******************************************************************************/

import QtQuick 2.2
import QtQuick.Window 2.0
import QtQuick.Controls 1.1
import QtQuick.Layouts 1.1

Window{
    id: insertnamedialog
    width: 400
    height: 100
    modality: Qt.ApplicationModal
    title: qsTr("Save current profile")

    signal nameSelected(string name)

    ColumnLayout{
        anchors.margins: 10
        anchors.fill: parent
        RowLayout{
            Label{text: qsTr("Name")}
            TextField{
                id: namefield
                Layout.fillWidth: true
                Component.onCompleted: forceActiveFocus()
            }
        }
        RowLayout{
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            Button{
                text: qsTr("OK")
                onClicked: {
                    nameSelected(namefield.text);
                    close();
                }
            }
            Button{
                text: qsTr("Cancel")
                onClicked: close()
            }
        }
    }
}
