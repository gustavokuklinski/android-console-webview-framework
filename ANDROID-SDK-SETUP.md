# Android SDK
Notas técnicas:
OS: Debian Stretch 9.5 (Stable)
PROC: Intel Core i3
RAM: 4GB DDR4
Android SDK: [Download command line tools](https://developer.android.com/studio/#downloads)
SDK Manager: [Referência de comando utilizados](https://developer.android.com/studio/command-line/sdkmanager)

1 - Instalar o Android SDK do site do Google
```
SDK instalado em: /opt/android
``` 

2 - Instalar o Java8, DB e Gradle do repositório(apt)
```
$ sudo apt-get install java8 adb gradle
```

3 - Inserir entradas no $PATH do sistema - .bashrc
```
export ANDROID_HOME=/opt/android/
export ANDROID_SDK_ROOT=/opt/android/
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
```

4 - Utilizar o sdkmanager do SDK para instalação dos pacotes
```
$ sdkmanager "platforms;android-28" "build-tools;28.0.3" "extras;google;m2repository" "extras;android;m2repository" "system-images;android-28;google_apis;x86_64"
```

5 - Criar emulador de Android - Nexus 5, android 28
```
$ avdmanager create avd -n localdroid -k "system-images;android-28;google_apis;x86_64" --device "Nexus 5" --sdcard 100M
```

### Testando app
6 - Testando o emulador:
```
$ emulator @localdroid
```

7 - Prepara o Gradle
```
$ ./gradlew
```

8 - Realiza o build do aplicativo
```
$ ./gradlew build
```

9 - Instala aplicativo no emulador(previamente aberto - passo: 6):
```
$ adb install <path>/<nome_do_apk>-debug.apk
```
  
10 - Instala aplicativo no celular(Plugado no USB com Developer Tools habilitado)
Testa no celular: 
```
$ ./gradlew installDebug
```
