@ECHO OFF
:: Set the code page to UTF-8, but suppress the output
chcp 65001 >nul

SET "folder=Private"
SET "lockName=Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"

:: Check if folder is locked
if EXIST "%lockName%" goto UNLOCK
if NOT EXIST "%folder%" goto MDPrivate

:CONFIRM
echo ██╗    ██╗██╗  ██╗ ██████╗  █████╗ ███╗   ███╗██╗
echo ██║    ██║██║  ██║██╔═══██╗██╔══██╗████╗ ████║██║
echo ██║ █╗ ██║███████║██║   ██║███████║██╔████╔██║██║
echo ██║███╗██║██╔══██║██║   ██║██╔══██║██║╚██╔╝██║██║
echo ╚███╔███╔╝██║  ██║╚██████╔╝██║  ██║██║ ╚═╝ ██║██║
echo  ╚══╝╚══╝ ╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═╝╚═╝     ╚═╝╚═╝
set /p "cho=Are you sure you want to lock this folder? (Y/N): "
if /I "%cho%"=="Y" goto LOCK
if /I "%cho%"=="N" goto END
echo Invalid choice. Please enter Y or N.
goto CONFIRM

:LOCK
ren "%folder%" "%lockName%"
attrib +h +s "%lockName%"
echo Folder locked successfully.
goto END

:UNLOCK
echo ██╗    ██╗██╗  ██╗ ██████╗  █████╗ ███╗   ███╗██╗
echo ██║    ██║██║  ██║██╔═══██╗██╔══██╗████╗ ████║██║
echo ██║ █╗ ██║███████║██║   ██║███████║██╔████╔██║██║
echo ██║███╗██║██╔══██║██║   ██║██╔══██║██║╚██╔╝██║██║
echo ╚███╔███╔╝██║  ██║╚██████╔╝██║  ██║██║ ╚═╝ ██║██║
echo  ╚══╝╚══╝ ╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═╝╚═╝     ╚═╝╚═╝
set /p "pass=Enter your password to unlock your folder: "
if "%pass%" NEQ "your password here" goto FAIL
attrib -h -s "%lockName%"
ren "%lockName%" "%folder%"
echo Folder unlocked successfully.
goto END

:FAIL
echo Invalid password. Access denied.
goto END

:MDPrivate
md "%folder%"
echo Folder "%folder%" created successfully.
goto END

:END
