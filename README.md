# Kali Terminal for Windows

A lightweight **Kali/Linux-inspired terminal simulator for Windows**, built entirely with a Windows Batch (`.bat`) script.

It provides a Kali-style terminal interface while using native Windows commands underneath. It includes Linux-like commands, colored output, user/root detection, command history, and a simulated `sudo`/root environment.

> [!NOTE]
> This is **not a real Kali Linux terminal**. It is a Windows Batch-based terminal simulator designed to provide a Linux/Kali-style experience.

## ✨ Features

- 🐉 Kali-style terminal interface
- 👤 Automatic user detection
- 🔴 Administrator/root mode detection
- ㉿ Kali symbol on supported Windows versions
- 🎨 ANSI colored terminal output
- 📁 Linux-style file commands
- 🌐 Network information
- 🖥️ System information
- 📜 Command history
- 🔐 `sudo su` / `su` simulation
- 🐚 `bash` and `exec bash` commands
- 💻 Multiple terminal windows
- ⚡ Lightweight
- 🚫 No external dependencies required

## 📦 Supported Commands

### File Commands

| Command | Description |
|---|---|
| `ls` | List files and folders |
| `cd` | Show current directory |
| `pwd` | Print current directory |
| `mkdir` | Create a folder |
| `rm` | Delete a file |
| `cp` | Copy a file |
| `mv` | Move or rename a file |
| `cat` | Display file contents |
| `touch` | Create an empty file |

### System Commands

| Command | Description |
|---|---|
| `whoami` | Show current Windows user |
| `hostname` | Show computer hostname |
| `ifconfig` | Display network information |
| `ps` | Show running processes |
| `date` | Display current date |
| `time` | Display current time |
| `uptime` | Show system boot time |
| `df` | Display disk information |
| `tree` | Display directory tree |
| `uname` | Display simulated Linux system name |
| `uname -a` | Display detailed system information |

### Shell Commands

| Command | Description |
|---|---|
| `clear` | Clear the terminal |
| `history` | Show entered commands |
| `echo <text>` | Print text |
| `bash` | Open another terminal window |
| `exec bash` | Restart the current terminal |
| `sudo su` | Request administrator/root mode |
| `su` | Request administrator/root mode |
| `help` | Display the help menu |
| `exit` | Exit the terminal |

## 🚀 Installation

No installation is required.

1. Download or clone this repository.
2. Open the project folder.
3. Double-click the `.bat` file.
4. The Kali-style terminal will start.

You can also run it from Command Prompt:

```bat
kali-terminal.bat
