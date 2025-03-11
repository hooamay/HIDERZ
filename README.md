# HIDERZ Script

This is a simple batch script used to lock and unlock a folder on Windows. The folder will become hidden and inaccessible to others unless they have the correct password to unlock it.

## How to Use

### 1. Clone or Download the Script
   - Download or clone the batch script to your computer.

### 2. Set Your Password
   - Open the script (`lock_folder.bat`) in any text editor.
   - Replace `"your password here"` with your desired password in the line below:
     ```batch
     if "%pass%" NEQ "your password here" goto FAIL
     ```

### 3. Run the Script
   - Double-click the `.bat` file to run it. 
   - When prompted, choose **Y** to lock the folder or **N** if you don't want to lock it.

### 4. Locking the Folder
   - When the folder is locked, it will become hidden and inaccessible until it is unlocked with the correct password.

### 5. Unlocking the Folder
   - To unlock the folder, run the script again and enter the correct password when prompted.

## How It Works

1. **Locking the Folder**  
   - When you choose to lock the folder, the script renames the folder to a system folder name and hides it by applying system and hidden attributes.

2. **Unlocking the Folder**  
   - To unlock the folder, run the script again, enter the correct password, and the script will restore the folder to its original state.

## Full Script Code

```batch
@ECHO OFF
chcp 65001 >nul
color a
SET "folder=Private"
SET "lockName=Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"

:: Check if folder is locked
if EXIST "%lockName%" goto UNLOCK
if NOT EXIST "%folder%" goto MDPrivate

ECHO.
ECHO ██╗  ██╗██╗██████╗ ███████╗██████╗ ███████╗
ECHO ██║  ██║██║██╔══██╗██╔════╝██╔══██╗╚══███╔╝
ECHO ███████║██║██║  ██║█████╗  ██████╔╝  ███╔╝ 
ECHO ██╔══██║██║██║  ██║██╔══╝  ██╔══██╗ ███╔╝  
ECHO ██║  ██║██║██████╔╝███████╗██║  ██║███████╗
ECHO ╚═╝  ╚═╝╚═╝╚═════╝ ╚══════╝╚═╝  ╚═╝╚══════╝
ECHO DEVELOPED BY: whoami
ECHO.

set /p "cho=Are you sure you want to hide this folder? (Y/N): "
if /I "%cho%"=="Y" goto LOCK
if /I "%cho%"=="N" goto END
echo Invalid choice. Please enter Y or N.
goto CONFIRM

:LOCK
echo Locking folder...
if NOT EXIST "%folder%" goto MDPrivate
ren "%folder%" "%lockName%" || echo ERROR: Failed to rename folder!
attrib +h +s "%lockName%" || echo ERROR: Failed to hide folder!
echo Folder locked successfully.
goto END

:UNLOCK
ECHO.
ECHO ██╗  ██╗██╗██████╗ ███████╗██████╗ ███████╗
ECHO ██║  ██║██║██╔══██╗██╔════╝██╔══██╗╚══███╔╝
ECHO ███████║██║██║  ██║█████╗  ██████╔╝  ███╔╝ 
ECHO ██╔══██║██║██║  ██║██╔══╝  ██╔══██╗ ███╔╝  
ECHO ██║  ██║██║██████╔╝███████╗██║  ██║███████╗
ECHO ╚═╝  ╚═╝╚═╝╚═════╝ ╚══════╝╚═╝  ╚═╝╚══════╝
ECHO DEVELOPED BY: whoami
ECHO.

setlocal enabledelayedexpansion
set /p "pass=Enter your password to unhide your folder: "
if "!pass!" NEQ "huwamee?" goto FAIL
attrib -h -s "%lockName%" || echo ERROR: Failed to unhide folder!
ren "%lockName%" "%folder%" || echo ERROR: Failed to rename folder!
echo Folder unlocked successfully.
goto END

:FAIL
echo Invalid password. Access denied.
goto END

:MDPrivate
md "%folder%" || echo ERROR: Failed to create folder!
echo Folder "%folder%" created successfully.
goto END

:END

