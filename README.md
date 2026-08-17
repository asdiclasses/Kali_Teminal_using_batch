Kali Terminal for Windows

A lightweight Kali/Linux-inspired terminal simulator for Windows, built entirely with a Windows Batch (.bat) script.

It provides a Kali-style terminal interface while using native Windows commands underneath. It includes Linux-like commands, colored output, user/root detection, command history, and a simulated sudo/root environment.

⚠️ This is not a real Kali Linux terminal. It is a Windows Batch-based terminal simulator designed to provide a Linux/Kali-style experience.

✨ Features
🐉 Kali-style terminal interface
👤 Automatic user detection
🔴 Root/admin mode detection
㉿ Kali symbol on supported Windows versions
🎨 ANSI colored terminal output
📁 Linux-style file commands
🌐 Network information
🖥️ System information
📜 Command history
🔐 sudo su / su simulation
🐚 bash and exec bash commands
💻 Multiple terminal windows
⚡ Lightweight — no external dependencies required
📦 Supported Commands
File Commands
Command	Description
ls	List files and folders
cd	Show current directory
pwd	Print current directory
mkdir	Create a folder
rm	Delete a file
cp	Copy a file
mv	Move or rename a file
cat	Display file contents
touch	Create an empty file
System Commands
Command	Description
whoami	Show current Windows user
hostname	Show computer hostname
ifconfig	Display network information
ps	Show running processes
date	Display current date
time	Display current time
uptime	Show system boot time
df	Display disk information
tree	Display directory tree
uname	Display simulated Linux system name
uname -a	Display detailed system information
Shell Commands
Command	Description
clear	Clear the terminal
history	Show entered commands
echo <text>	Print text
bash	Open another terminal window
exec bash	Restart the current terminal
sudo su	Request administrator/root mode
su	Request administrator/root mode
help	Display the help menu
exit	Exit the terminal
🚀 Installation

No installation is required.

Download the .bat file.
Place it anywhere on your Windows PC.
Double-click the file.
The Kali-style terminal will start.

Alternatively, run it from Command Prompt:

kali-terminal.bat
🔐 Administrator / Root Mode

The script checks whether it is running with administrator privileges.

When running normally, the prompt uses:

$ 

When running as administrator, it uses:

#

The terminal also changes the displayed username to:

root

when administrator privileges are detected.

Using:

sudo su

or:

su

requests an elevated Windows process through UAC.

Note: Windows Administrator privileges are not the same thing as Linux root privileges. The root interface is a simulation.

🎨 Terminal Appearance

The terminal uses ANSI escape sequences for colored output and displays a Kali-inspired prompt.

Example:

╔══(username㉿Kali)
╚══>$ 

When running as administrator:

╔══(root㉿Kali)
╚══>#

The ㉿ symbol is automatically enabled on newer Windows builds.

📜 Command History

Commands entered during the session are temporarily stored in:

%TEMP%\kali_history.txt

Use:

history

to display the commands entered during the current session.

🛠️ Requirements
Windows 10 or Windows 11
Command Prompt / Windows Batch support
ANSI/UTF-8 terminal support recommended

The script does not require:

Python
Node.js
Linux
WSL
Kali Linux
Additional packages
⚠️ Important Notes

This project is a terminal simulator, not a replacement for Kali Linux.

Commands such as ls, rm, cp, mv, ifconfig, and ps are implemented using Windows functionality.

For example:

ls

uses Windows dir internally, while:

ps

uses Windows tasklist.

Therefore, Linux commands that aren't implemented by the script will return:

Bash: command: Command Not Found
📁 Project Structure

A minimal installation can simply contain:

Kali-Terminal/
└── kali-terminal.bat

No additional files are required.

🎯 Project Goal

The goal of this project is to create a Kali/Linux-inspired terminal experience using only Windows Batch scripting, while keeping it lightweight and easy to run.

It is intended primarily for experimentation, customization, learning Batch scripting, and creating a Linux-style terminal interface on Windows.

📜 License

You are free to modify this project for personal use.

If you redistribute a modified version, consider giving credit to the original project/creator.

⭐ Credits

Created by Asdi Classes

Built with:

Windows Batch Script
Windows Command Prompt
Native Windows commands
ANSI escape sequences
