@ECHO OFF
:: =======================================================
:: Folder Lock and Unlock Utility - README
:: =======================================================
:: 
:: Overview:
:: This utility allows you to lock and unlock a folder on your Windows system using a password.
:: Once locked, the folder is hidden, and its name is changed to prevent easy access.
:: Only the person with the correct password can unlock the folder.
::
:: Features:
:: - Lock Folder: You can lock a folder by renaming it and applying hidden and system attributes,
::   making it invisible and inaccessible to casual users.
:: - Unlock Folder: You can unlock the folder by entering a password.
:: - Customizable: Easily change the folder name or password for your own use.
:: - Invisible Mode: The utility can run in invisible mode, so there is no command window visible 
::   while the utility is in action.
:: - Password Protection: The script ensures that the folder can only be unlocked with the correct password.
:: - Encryption: The compiled EXE file is encrypted, making it harder for users to view or modify the script.
::
:: How It Works:
:: Locking a Folder:
:: When you choose to lock a folder, the script renames the folder to a system object (using a GUID) 
:: and applies the hidden and system attributes, which make the folder invisible and inaccessible to normal users.
::
:: Unlocking a Folder:
:: To unlock the folder, you’ll need to enter the correct password. The password is checked, and if it matches, 
:: the script removes the hidden and system attributes, restores the folder name, and makes it accessible again.
::
:: How to Use:
:: 1. Locking the Folder
::    - Run the EXE file.
::    - When prompted, enter Y to lock the folder, or N to cancel.
::    - The script will rename the folder and hide it.
::
:: 2. Unlocking the Folder
::    - Run the EXE file again.
::    - When prompted, enter the correct password to unlock the folder.
::    - If the password is correct, the folder will be restored, and you’ll regain access.
::
:: 3. Folder Creation (If Folder Doesn't Exist)
::    - If the folder doesn’t already exist, the script will automatically create it for you.
::
:: Folder Location:
:: The default folder is named Private. You can change the folder name by modifying the script before compiling.
::
:: Password:
:: The default password is huwamee?. You can change the password by modifying the script before compiling.
::
:: Requirements:
:: Windows Operating System: This utility works on all modern versions of Windows (Windows 7, 8, 10, and 11).
:: .NET Framework (for the Bat To Exe Converter): If you use the Bat To Exe Converter for compiling, it requires the .NET Framework.
::
:: Security Warning:
:: Important: The password is stored in the compiled EXE, and while encryption is applied, it is still possible for 
:: a determined user to reverse-engineer the EXE and extract the password. Use it with caution and in environments where 
:: the system's physical security is ensured.
::
:: Troubleshooting:
:: Folder Doesn’t Lock:
::    - Make sure the folder is not in use by any other programs or processes when attempting to lock it.
:: Unable to Unlock:
::    - Double-check that the correct password is entered. If you forget the password, there is no way to recover 
::      the folder without advanced tools or restoring from a backup.
::
:: License:
:: This script is provided for personal and educational use. It comes with no warranty, and the author is not 
:: responsible for any data loss or system issues that may occur when using this utility.
::
:: How to Compile and Customize the Script:
:: If you wish to customize the folder name, password, or other aspects of the script before compiling it, follow these steps:
::
:: 1. Edit the Batch Script:
::    - Open the .bat file in a text editor (like Notepad).
::    - Modify the SET "folder=Private" line to change the folder name.
::    - Modify the SET "pass=huwamee?" line to change the password.
::
:: 2. Compile the Batch File:
::    - Use Bat To Exe Converter to convert the .bat file into an EXE.
::    - Set any additional options like Invisible Mode and Encryption for extra protection.

:: =======================================================
:: Script Begins Below
:: =======================================================
