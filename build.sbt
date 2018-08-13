lazy val root = (project in file("."))
    .enablePlugins(JavaAppPackaging, AshScriptPlugin, DockerPlugin)
    .settings(
      name := "scala-docker",
      version := "latest",
      scalaVersion := "2.12.6",
      mainClass in (Compile, run) := Some("Boot"),
 
      dockerBaseImage := "java:8-jdk-alpine"
    )
