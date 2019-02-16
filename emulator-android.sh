#!/bin/bash

# =====================================================
# Emulador de Android - Linha de comando
# Pacotes necessários:
# sdkmanager "system-images;android-28;google_apis;x86_64"
#
# Criando emulador
# avdmanager create avd -n localdroid -k "system-images;android-28;google_apis;x86_64" --device "Nexus 5" --sdcard 100M
#
# Iniciando emulador
# emulator @localandroid
# =====================================================

echo 'Iniciando emulador de android'
emulator @localandroid
