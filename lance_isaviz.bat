@echo off
REM Script pour lancer IsaViz plus facilement
echo Lancement de IsaViz... 
cd "%~dp0IsaViz"
java.exe -classpath lib/isaviz.jar;lib/zvtm.jar;lib/xercesImpl.jar;lib/xmlParserAPIs.jar;lib/jena/jena.jar;lib/jena/icu4j_3_4.jar;lib/jena/junit.jar;lib/jena/log4j-1.2.12.jar;lib/jena/commons-logging.jar;lib/jena/concurrent.jar;lib/jena/jakarta-oro-2.0.8.jar;lib/antlr-2.7.5.jar org.w3c.IsaViz.Editor %1 %2 %3
if %ERRORLEVEL% NEQ 0 (
    echo Une erreur s'est produite lors du lancement de IsaViz. 
    echo Assurez-vous que Java est installé et disponible dans votre PATH.
    pause
)
