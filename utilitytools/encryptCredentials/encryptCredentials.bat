echo off
set InstallDir=.
"%CSSS_JAVA_HOME%\bin\java" -classpath %InstallDir%\lib\SecureCredentials.jar;%InstallDir%\lib\log4j-1.2.8.jar;%InstallDir%\config -DLog4jFile=config-log4j.xml -DPropertiesFile=credentialresource.properties com.omgeo.security.EncryptionHandler
pause