<p align="center">
  <img src="folder.png" alt="HIDERZ Logo" width="80" />
</p>

<h1 align="center">HIDERZ v1.0</h1>

<p align="center">
  A lightweight Windows batch script that hides and locks folders with a password.<br>
  Designed for local privacy, quick protection, and no external tools — all within a simple terminal prompt.
</p>

<hr>

## 🛠️ Features

- **Lock & Hide Any Folder**  
  Quickly hides a folder and makes it inaccessible without the correct password.

- **Password-Protected Access**  
  Only users who enter the correct password can unlock and reveal the folder.

- **System Attribute Cloaking**  
  Folders are renamed and marked with `+s +h` to hide them from Explorer.

- **Zero Dependencies**  
  No installation or admin access required — pure `.bat` file functionality.

- **Easy Setup & Use**  
  Just set your password once inside the script, then lock or unlock anytime.

---

## ⚙️ How to Use

### 🧰 Requirements
- Any Windows OS (tested on Windows 10/11)
- Basic file system permissions
- Console (CMD or PowerShell)

### 🚀 Installation
1. Download or clone this repo.
2. Open `lock_folder.bat` in a text editor.
3. Find this line:
   ```batch
   if "%pass%" NEQ "your password here" goto FAIL
4. Replace "your password here" with your desired password.
5. Save the file and double-click to run.

### 🔢 Menu Options
When running the script:
- First Run:
Creates a folder named Private if it doesn't exist.
- Lock Folder:
When Private exists, run the script → Press Y to lock it.
It becomes hidden and inaccessible.
- Unlock Folder:
Run the script again → Enter the password correctly → Folder is restored.
- Cancel:
At any input, type N or close the window to cancel.

### 💡 Usage Examples
- Lock files from public view on shared PCs
- Temporarily hide project folders or sensitive documents
- Simple script-based protection without needing 3rd-party apps+

### ⚠️ Disclaimer
This script uses Windows folder hiding techniques, not encryption.
It is intended for basic privacy, not high-security purposes.
Anyone familiar with batch scripting or system internals can potentially bypass this.
Use responsibly.

### 📜 License
MIT License © 2025 huwamee

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.

### Developed by huwamee
- Suggestions and forks welcome — feel free to expand this idea!
