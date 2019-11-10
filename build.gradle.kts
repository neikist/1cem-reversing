import java.util.*

plugins {
    id("base")
    id("java")
    id("com.novoda.build-properties") version "0.4.1"
}

buildProperties {
    create("local") {
        using(project.file("local.properties"))
    }
}
val localProperties = buildProperties["local"].asMap()

val fileSrcApk = layout.projectDirectory.dir("sourceApk").asFileTree.singleFile
val apkFilePath = fileSrcApk.path
val apkName = fileSrcApk.nameWithoutExtension
val packageName = "com.e1c.mobile"
val targetApi = 28
val minApi = 23

val androidSdkDir = localProperties["sdk.dir"]?.string?.trim() ?: error("Need define path to android sdk")
val pathToBaksmali = localProperties["baksmali.dir"]?.string?.trim() ?: error("define path to baksmali")

val keystorePath = localProperties["keystore.path"]?.string?.trim() ?: error("Need define path to keystore")
val keystorePassword = localProperties["keystore.password"]?.string?.trim() ?: error("Need define keystore password")
val keyAlias = localProperties["key.alias"]?.string?.trim() ?: error("Need define key alias")
val keyPassword = localProperties["key.password"]?.string?.trim() ?: error("Need define key password")

val buildToolsVersion = localProperties["buildToolsVersion"]?.string?.trim()
        ?: error("Need define sdk build tools version")

val runOnWindows = runOnWindows()
val separator = File.separator
sourceSets {
    main {
        java {
            val androidSdkFiles by files("$androidSdkDir${separator}platforms${separator}android-$targetApi${separator}android.jar")

            setSrcDirs(listOf("src/java", "src/stubJava"))
            exclude("stubJava/**")
            compileClasspath = androidSdkFiles

        }
    }
}

tasks {

    val apktoolUnpackDestinationDir = layout.buildDirectory.dir("unpacked").get().asFile.path
    val unpack = task("unpack", type = Exec::class) {
        if (runOnWindows) {
            commandLine("PowerShell", "apktool.bat", "-f", "d $apkFilePath", "-o $apktoolUnpackDestinationDir")
        } else {
            executable("sh")
            args("-c", "apktool -f d $apkFilePath -o $apktoolUnpackDestinationDir")
        }
    }

    val extractDex = task("extractDex", type = Copy::class) {
        from(zipTree(layout.projectDirectory.file(fileSrcApk.path))) {
            include("**/*.dex")
        }
        into(layout.buildDirectory)
    }
    val jadx = task("jadx", type = Exec::class) {
        dependsOn(extractDex)
        if (runOnWindows) {
            commandLine(
                    "PowerShell",
                    "jadx.bat --no-debug-info --no-res --show-bad-code -j 1 --fs-case-sensitive -d ${layout.buildDirectory.dir("decompiledJava").get().asFile.path} ${layout.buildDirectory.file("classes.dex").get().asFile.path}"
            )
        } else {
            TODO("Not implemented")
        }
    }

    compileJava.get().sourceCompatibility = JavaVersion.VERSION_1_8.toString()
    compileJava.get().targetCompatibility = JavaVersion.VERSION_1_8.toString()
    compileJava.get().options.encoding = "UTF-8"

    val compileToDex = task("compileToDex", type = Exec::class) {
        dependsOn(compileJava.get())
        val classesPath = layout.buildDirectory.dir("classes/java/main").get().asFile.invariantSeparatorsPath

        if (runOnWindows) {
            val filesToCompileToDex = files(layout.projectDirectory.dir("src/java").asFileTree.map {
                it.path.replace(Regex(".*src\\\\java"), classesPath).replace(".java", ".class")
            })
            commandLine(
                    "PowerShell",
                    "${androidSdkDir}${separator}build-tools$separator$buildToolsVersion${separator}d8.bat ${filesToCompileToDex.fold("") { acc, file -> acc + file.path + " " }} --min-api ${minApi} --output ${layout.buildDirectory.get().asFile.path}"
            )
        } else {
            TODO("Not implemented")
        }
    }

    val decompileOwnFilesToSmali = task("decompileOwnFilesToSmali", type = Exec::class) {
        dependsOn(compileToDex)

        if (runOnWindows) {
            commandLine(
                    "PowerShell",
                    "java -jar ${pathToBaksmali}${separator}baksmali.jar d " +
                            "${layout.buildDirectory.file("classes.dex").get().asFile.path} " +
                            "-o ${layout.buildDirectory.dir("unpackedOwn").get().asFile.path}"
            )
        } else {
            TODO("Not implemented")
        }
    }

    val copySmaliFiles = task("copySmaliFiles", type = Copy::class) {
        dependsOn(unpack)
        dependsOn(decompileOwnFilesToSmali)

        from(layout.projectDirectory.dir("src/smali").asFile.path) {
            include("**/*.smali")
        }
        from(layout.buildDirectory.dir("unpackedOwn").get().asFile.path) {
            include("**/*.smali")
        }

        destinationDir = layout.buildDirectory.dir("unpacked/smali").get().asFile
    }

    val copyResFiles = task("copyResFiles", type = Copy::class) {
        dependsOn(unpack)

        from(layout.projectDirectory.dir("src/res").asFile.path) {
            include("**/*")
        }

        destinationDir = layout.buildDirectory.dir("unpacked/res").get().asFile
    }

    val apktoolPackDestinationDir = "${layout.buildDirectory.get().asFile.path}${File.separator}$apkName.apk"
    val pack = task("pack", type = Exec::class) {
        dependsOn(copySmaliFiles)
        dependsOn(copyResFiles)

        if (runOnWindows) {
            commandLine("PowerShell", "apktool.bat  b $apktoolUnpackDestinationDir -o $apktoolPackDestinationDir")
        } else {
            executable("sh")
            args("-c", "apktool b $apktoolUnpackDestinationDir -o $apktoolPackDestinationDir")
        }

    }

    val sign = task("sign", type = Exec::class) {
        dependsOn(pack)
        if (runOnWindows) {
            commandLine(
                    "PowerShell",
                    "${androidSdkDir}${separator}build-tools$separator$buildToolsVersion${separator}apksigner.bat sign"
                            + " --ks $keystorePath "
                            + " --ks-key-alias $keyAlias "
                            + " --ks-pass pass:$keystorePassword "
                            + " --key-pass pass:$keyPassword "
                            + apktoolPackDestinationDir
            )
        } else {
            executable("sh")
            args("-c", "${androidSdkDir}${separator}build-tools$separator$buildToolsVersion${separator}apksigner sign"
                    + " --ks $keystorePath "
                    + " --ks-key-alias $keyAlias "
                    + " --ks-pass pass:$keystorePassword "
                    + " --key-pass pass:$keyPassword "
                    + apktoolPackDestinationDir
            )
        }

    }
    assemble.get().dependsOn(sign)

    val installApk = task("installApk", type = Exec::class) {
        dependsOn(assemble.get())
        if (runOnWindows) {
            commandLine(
                    "PowerShell",
                    "adb install ${layout.buildDirectory.file("$apkName.apk").get().asFile.path}"
            )
        } else {
            executable("sh")
            args("-c", "")
            TODO("Пока не реализовал")
        }
    }

    val grantPermissionReadStorage = task("grantPermissionReadStorage", type = Exec::class) {
        dependsOn(installApk)
        commandLine(
                "PowerShell",
                "adb shell pm grant $packageName android.permission.READ_EXTERNAL_STORAGE"
        )
    }

    val pathToCf = "/storage/emulated/0/Download"
    val push1cCf = task("push1cCf", type = Exec::class) {
        dependsOn(grantPermissionReadStorage)
        commandLine(
                "PowerShell",
                "adb push ${layout.projectDirectory.dir("src/1cConfiguration").asFile.path} $pathToCf"
        )
    }

    val run1cApk = task("run1cApk", type = Exec::class) {
        dependsOn(push1cCf)
        commandLine(
                "PowerShell",
                "adb shell am start -n com.e1c.mobile/.App -a android.intent.action.MAIN -c android.intent.category.LAUNCHER"
        )

    }

    val runOnDevice = task("runOnDevice", type = Exec::class) {
        dependsOn(run1cApk)
        commandLine(
                "PowerShell",
                "adb shell am broadcast -n com.e1c.mobile/.Starter -a com.e1c.mobile.START_TEMPLATE -e templatepath $pathToCf/1cConfiguration/1cema.xml "
        )
    }

}

fun runOnWindows(): Boolean = System.getProperty("os.name").toLowerCase(Locale.ROOT).contains("windows")
