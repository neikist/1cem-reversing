# 1cem-reversing
Реверсинг мобильной 1с из любопытства

Не стоит забывать что это x86 версия, соответственно на телефонах запускаться не будет, только в эмуляторах.

Для запуска gradle скрипта для сборки приложения необходимо убедиться в наличии следующих установленных утилит и в том что путь к ним добавлен в переменную окружения PATH:
 - apktool
 - jadx (если планируется смотреть декомпилированные в java сорцы)

А так же, естественно, android sdk и jdk.

Дополнительно необходимо создать в корне проекта файл local.properties с примерно следующим содержимым
```
sdk.dir=C:\\Android\\Sdk
baksmali.dir=C:\\Android\\backsmali
buildToolsVersion=29.0.2
keystore.path="Путь к файлу хранилища ключей"
keystore.password="Пароль к хранилищу ключей"
key.alias="Ваш ключ"
key.password="Пароль ключа"
```

А также необходимо заменить google_maps_key в `src/res/strings.xml` на ваш ключ

Gradle tasks
 - gradlew assemble запускает сборку apk с внесенными изменениями
 - gradlew runOnDevice запускает apk на эмуляторе
 - gradlew jadx декомпиляция в java (результат будет лежать в ./build/decompiledJava)
 - gradlew unpack распаковывает apk используя apktool
