echo off
set InstallDir=.
"%CSSS_JAVA_HOME%\bin\java" -classpath %InstallDir%\lib\log4j-1.2.8.jar;%InstallDir%\lib\GenKeyPair.jar;%InstallDir%\config -DLog4jFile=config-log4j.xml -DPropertiesFile=keypairconfig.properties com.omgeo.keyGen.GenKeyPair
pause