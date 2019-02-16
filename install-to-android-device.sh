#!/bin/bash

echo "Instalando APK..."
echo "Lembre-se de conectar o celular no USB!"
adb install android/app/build/outputs/apk/debug/app-debug.apk
