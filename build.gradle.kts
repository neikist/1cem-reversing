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


val androidSdkDir = localProperties["sdk.dir"]?.string ?: error("Need define path to android sdk")

tasks {
    task("print") {
        doLast {
            println(apkName)
        }
    }

    val apktoolUnpackDestinationDir = "${layout.buildDirectory.get().asFile.path}${File.separator}unpacked"
    val unpack = task("unpack", type=Exec::class) {
        doFirst{
            // linux
            commandLine("apktool")

            // windows
            commandLine("PowerShell", "apktool.bat")
            args("-f", "d $apkFilePath", "-o $apktoolUnpackDestinationDir")

        }
    }

    val copySmaliFiles = task("copySmaliFiles", type=Copy::class){

        from(layout.projectDirectory.dir("src/smali").asFile.path) {
            include("**/*.smali")
        }

        destinationDir = layout.buildDirectory.dir("unpacked/smali").get().asFile
    }

    val apktoolPackDestinationDir = "${layout.buildDirectory.get().asFile.path}${File.separator}$apkName.apk"
    val pack = task("pack", type=Exec::class) {
        dependsOn(copySmaliFiles)

        // linux
        commandLine("apktool")

        // windows
        commandLine("PowerShell", "apktool.bat")
        args("b $apktoolUnpackDestinationDir", "-o $apktoolPackDestinationDir")

    }
}