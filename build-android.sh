#!/bin/bash

# =====================================================
# Gradle - Script de build
# Build (Verifica dependencias)
# ./gradlew
#
# Realiza o build do aplicativo
# ./gradlew build
#
# Instala aplicativo no emulador
# adb install <path>/<nome_do_apk>-debug.apk
#
# Testa no celular plugado no USB
# ./gradlew installDebug
# =====================================================

cd android/
./gradlew build
