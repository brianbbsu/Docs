#!/bin/sh

/opt/jupiter/bin/java --add-exports javafx.controls/com.sun.javafx.scene.control=com.jfoenix --add-exports javafx.controls/com.sun.javafx.scene.control.behavior=com.jfoenix --add-exports javafx.graphics/com.sun.javafx.scene=com.jfoenix -m jupiter/jupiter.Jupiter  "$@"
