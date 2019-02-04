# Android SDK

1 - Instalar o android SDK do site do Google

2 - Instalar o emulador e o Java
```
apt-get no java8
apt-get install adb
```

2 - Inserir o aplicativo no $PATH do sistema - .bashrc
```
export ANDROID_HOME=/opt/android/
export ANDROID_SDK_ROOT=/opt/android/
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
```

3 - Instalar o Gradle do repositório
```
sudo apt-get install gradle
```

4 - Utilizar o sdkmanager do android instalação de aplicação
```
sdkmanager "platforms;android-28" "build-tools;28.0.3" "extras;google;m2repository" "extras;android;m2repository"
sdkmanager "system-images;android-28;google_apis;x86_64"
```

5 - Emulador Android - Criando aplicação
```
avdmanager create avd -n localdroid -k "system-images;android-28;google_apis;x86_64" --device "Nexus 5" --sdcard 100M
avdmanager create avd -n localdroid17 -k "system-images;android-17;google_apis;x86_64" --device "Nexus 5" --sdcard 100M
```

6 - Inicia o emulador:
```
emulator @localdroid
```
7 - Prepara o Gradle
```
Compila Gradle: ./gradlew
```

8 - Realiza o build do aplicativo
```
./gradlew build
```

8 - Instala aplicativo no emulador (rodando):
```
adb install <path>/<nome_do_apk>-debug.apk
```
  
9 - Instala aplicativo no celular(Plugado no USB com Developer Tools habilitado)
Testa no celular: 
```
./gradlew installDebug
```
