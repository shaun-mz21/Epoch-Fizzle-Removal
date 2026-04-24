@echo off

REM === Paths ===
set WOW_DIR=YOUR_WOW_FOLDER_HERE
set BACKUP_DIR=YOUR_FIZZLE_FOLDER_HERE

REM === Target fizzle folder ===
set TARGET_DIR=%WOW_DIR%\Data\Sound\Spells\Fizzle

REM === Check if folder exists ===
if not exist "%TARGET_DIR%" (
	echo Fizzle folder missing, restoring...
	mkdir "%TARGET_DIR%"
	xcopy "%BACKUP_DIR%\*" "%TARGET_DIR%\" /E /I /Y
) else (
	REM Optional: check one file to be sure
	if not exist "%TARGET_DIR%\FizzleFireA.wav" (
		echo Fizzle files missing, restoring...
		xcopy "%BACKUP_DIR%\*" "%TARGET_DIR%\" /E /I /Y
	)
)

REM === Launch game ===
start "" "%WOW_DIR%\Ascension.exe"