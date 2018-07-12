set CSSS_JAVA_HOME=%JAVA_HOME%
set InstallDir=.

"%CSSS_JAVA_HOME%\bin\java" -classpath %InstallDir%\lib\CSSS.jar;%InstallDir%\lib\DCIWebSession1_1_9.jar;%InstallDir%\lib\log4j-1.2.8.jar;%InstallDir%\properties com.radiuspartners.csss.CTMConnectFTPClientMain
