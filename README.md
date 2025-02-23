@ECHO OFF
:: =======================================================
:: Folder Lock and Unlock Utility - README
:: =======================================================
:: 
:: Overview: Lock/unlock a folder with password protection.
:: Once locked, the folder is hidden and renamed. Only
:: the correct password can unlock it.
::
:: Features:
:: - Lock and hide folders with system and hidden attributes.
:: - Unlock by entering the correct password.
:: - Customizable folder name and password.
:: - Runs in invisible mode.
:: - Encrypted compiled EXE for extra security.
::
:: How It Works:
:: - Lock: Renames folder, hides it with system attributes.
:: - Unlock: Enter the password to restore the folder.
::
:: How to Use:
:: 1. Run EXE.
:: 2. Enter Y to lock, N to cancel.
:: 3. Enter password to unlock the folder.
:: 4. If folder doesn’t exist, it will be created.
::
:: Requirements:
:: - Works on Windows 7/8/10/11.
:: - Requires .NET Framework for Bat To Exe Converter.
::
:: Security Warning:
:: Password stored in compiled EXE; use in secure environments.
::
:: Troubleshooting:
:: - Ensure folder isn’t in use when locking.
:: - Double-check the password when unlocking.
::
:: License: Free for personal/educational use. No warranty.
::
:: How to Compile:
:: 1. Modify folder name and password in the script.
:: 2. Use Bat To Exe Converter to create EXE.
:: 3. Optionally enable invisible mode and encryption.
:: =======================================================
:: Script Begins Below
:: =======================================================
