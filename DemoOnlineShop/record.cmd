If /I "%Processor_Architecture%" NEQ "x86" (
%SystemRoot%\SysWoW64\cmd.exe /C %0
goto :eof
)
SET SMARTESTUDIO_TEST_FOLDER=%~dp0
set WSCRIPTENGINE=cscript
pushd "%SMARTESTUDIO_TEST_FOLDERS%."
SET SMARTESTUDIO_TEST_FOLDERS=%SMARTESTUDIO_TEST_FOLDER:\=\\%
"C:\Program Files (x86)\Inflectra\Rapise\Bin\..\Engine\record.bat"  "%SMARTESTUDIO_TEST_FOLDER%Main.js" "-eval:g_modifierKeys='None'" "-eval:g_verboseLevel=1" "-eval:g_sstestPath='%SMARTESTUDIO_TEST_FOLDERS%DemoOnlineShop-RVLJS.sstest'" "-eval:g_userFunctionsFileName='%SMARTESTUDIO_TEST_FOLDERS%User.js'" "-eval:g_scriptObjectsFileName='%SMARTESTUDIO_TEST_FOLDERS%Objects.js'" "-eval:g_objectsMetadataFileName='%SMARTESTUDIO_TEST_FOLDERS%Objects.metadata'" "-eval:g_reportFileName='%SMARTESTUDIO_TEST_FOLDERS%DemoOnlineShop-RVLJS.trp'" "-eval:g_commandInterval=1000" "-eval:g_iterationsCount=1" "-eval:g_stopOnError=true" "-eval:g_cacheObjects=false" "-eval:g_objectLookupAttempts=30" "-eval:g_objectLookupAttemptInterval=300" "-eval:g_beautifySavedObjects=true" "-eval:g_saveRecordingScreenshots=false" "-eval:g_savePlaybackScreenshots=false" "-eval:g_savePlaybackScreenshotsInTestReport=false" "-eval:g_saveScreenshotObjectOnly=false" "-eval:g_saveScreenshotsCaptureCursor=true" "-eval:g_entryPointName='Test'" "-eval:g_workDir='%SMARTESTUDIO_TEST_FOLDERS:~0,-2%'" "-eval:g_browserLibrary='Chrome HTML'" "-eval:g_rWnd='regex:.*'" "-eval:g_rvlScriptPath='Main.rvl.xlsx'" "-eval:g_webPluginsAutoDetect='False'" "-eval:g_relearnObject='Order_price'"
popd
