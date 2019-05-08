﻿import QtQuick 2.9
import QtQuick.Controls 2.0

import "./BasicComponent"
import "./Page"
import "./Config"

import "./ContentData.js" as ContentData

Item {
    id: root
    width: 800
    height: 600
    Rectangle {
        id: titleRect
        width: root.width
        height: 60
        color: TConfig.background
        TMoveArea {
            anchors.fill: parent
            onMove: {
                view.x += xOffset
                view.y += yOffset
            }
        }
    }
    TResizeBorder {
        controller: view
        anchors.fill: parent
    }
    Rectangle {
        id: contentRect
        width: parent.width
        color: "white"
        anchors.top: titleRect.bottom
        anchors.bottom: parent.bottom
    }
}
