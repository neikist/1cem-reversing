import java.util.*

plugins {
    id("base")
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


val androidSdkDir = localProperties["sdk.dir"]?.string?.trim() ?: error("Need define path to android sdk")

val keystorePath = localProperties["keystore.path"]?.string?.trim() ?: error("Need define path to keystore")
val keystorePassword = localProperties["keystore.password"]?.string?.trim() ?: error("Need define keystore password")
val keyAlias = localProperties["key.alias"]?.string?.trim() ?: error("Need define key alias")
val keyPassword = localProperties["key.password"]?.string?.trim() ?: error("Need define key password")

val buildToolsVersion = localProperties["buildToolsVersion"]?.string?.trim() ?: error("Need define sdk build tools version")

val runOnWindows = runOnWindows()

tasks {
    task("print") {
        doLast {
            println(apkName)
        }
    }

    val apktoolUnpackDestinationDir = "${layout.buildDirectory.dir("unpacked").get().asFile.path}"
    val unpack = task("unpack", type = Exec::class) {
        doFirst {
            if (runOnWindows) {
                commandLine("PowerShell", "apktool.bat", "-f", "d $apkFilePath", "-o $apktoolUnpackDestinationDir")
            } else {
                executable("sh")
                args("-c", "apktool -f d $apkFilePath -o $apktoolUnpackDestinationDir")
            }
        }
    }

    val copySmaliFiles = task("copySmaliFiles", type = Copy::class) {

        from(layout.projectDirectory.dir("src/smali").asFile.path) {
            include("**/*.smali")
        }

        destinationDir = layout.buildDirectory.dir("unpacked/smali").get().asFile
    }

    val apktoolPackDestinationDir = "${layout.buildDirectory.get().asFile.path}${File.separator}$apkName.apk"
    val pack = task("pack", type = Exec::class) {
        dependsOn(copySmaliFiles)

        if (runOnWindows) {
            commandLine("PowerShell", "apktool.bat  b $apktoolUnpackDestinationDir -o $apktoolPackDestinationDir")
        } else {
            executable("sh")
            args("-c", "apktool b $apktoolUnpackDestinationDir -o $apktoolPackDestinationDir")
        }

    }

    val sign = task("sign", type = Exec::class) {
        dependsOn(pack)
        val separator = File.separator
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
}

fun runOnWindows(): Boolean = System.getProperty("os.name").toLowerCase(Locale.ROOT).contains("windows")
