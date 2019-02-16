# Android Console Webview Framework
Pequeno framework para desenvolvimento de aplicativos Android utilizando HTML5
sem a necessidade do Android Studio.

[Preparando SDK](https://github.com/gustavokuklinski/android-console-webview-framework/blob/master/ANDROID-SDK-SETUP.md)

### Diretórios
* /android: Todo código fonte da aplicação seguindo os requisitos do Android Studio
* /www: Aplicação Web ($ln -s android/app/src/main/java/assets/ www)
* android/app/src/main/java/com/demo/app/: Código fonte Android
* android/app/src/main/java/assets/: Código fonte HTML

### Scripts
Alguns scripts de automoção e facilidade de acesso:

Realiza o Build do aplicativo, gerando APK sem assinatura para PlayStore
```
./build-android.sh
```

Inicia o emulador do Android
```
./emulador-android.sh
```

Instala o APK gerado no dispositivo conectado na USB do computador e/ou Emulador
```
./install-to-android-device.sh
```

Também realiza instalação do APK no dispositivo conectado na USB do computador
```
./android/gradlew installDebug
```
