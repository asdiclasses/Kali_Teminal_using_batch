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

    kali-terminal.bat

## 🔐 Administrator / Root Mode

The script automatically checks whether it is running with administrator privileges.

When running normally, the prompt uses:

    $

When running as administrator, it uses:

    #

The displayed username also changes to:

    root

when administrator privileges are detected.

You can request administrator mode with:

    sudo su

or:

    su

> [!IMPORTANT]
> Windows Administrator privileges are **not the same as Linux root privileges**. The `root` interface in this project is a simulation of the Linux-style experience.

## 🎨 Terminal Appearance

The terminal uses ANSI escape sequences for colored output and displays a Kali-inspired prompt.

Example:

    ╔══(username㉿Kali)
    ╚══>$

Administrator mode:

    ╔══(root㉿Kali)
    ╚══>#

The `㉿` symbol is automatically enabled on supported newer Windows builds.

## 📜 Command History

Commands entered during the session are temporarily stored in:

    %TEMP%\kali_history.txt

Use:

    history

to display commands entered during the current session.

## 🛠️ Requirements

- Windows 10 or Windows 11
- Command Prompt / Windows Batch support
- ANSI/UTF-8 terminal support recommended

No additional software is required.

You do **not** need:

- Python
- Node.js
- Linux
- WSL
- Kali Linux
- Additional packages

## ⚠️ Limitations

This project is a **terminal simulator**, not a replacement for Kali Linux.

Commands such as `ls`, `rm`, `cp`, `mv`, `ifconfig`, and `ps` are implemented using Windows functionality.

For example:

    ls

uses Windows `dir` internally.

Similarly:

    ps

uses Windows `tasklist`.

Therefore, Linux commands that are not implemented by the script will return:

    Bash: command: Command Not Found

## 📁 Project Structure

The project only requires the Batch file:

    Kali-Terminal/
    └── kali-terminal.bat

No additional files are required.

## 🎯 Project Goal

The goal of this project is to create a **Kali/Linux-inspired terminal experience using only Windows Batch scripting**.

The project is designed for:

- Learning Windows Batch scripting
- Experimenting with terminal interfaces
- Creating a Linux-style terminal experience on Windows
- Customizing Command Prompt
- Learning how Windows commands can be wrapped with Linux-style aliases

## ❤️ Project Note

This project took a lot of **time, effort, testing, and experimentation** to build.

It was created from scratch using Windows Batch scripting, with the goal of making a Kali/Linux-inspired terminal experience without requiring Linux, WSL, Python, or other external software.

If you like the project and have ideas for improvements, **feel free to suggest them!** New ideas and constructive feedback are always welcome.

## 💡 Future Ideas

Some possible features that may be added in the future:

- More Linux-style commands
- Better command parsing
- Command arguments and flags
- Better `cd` support
- More realistic Linux-style output
- Custom terminal themes
- Custom prompt configuration
- Better command history
- Tab completion
- Command aliases
- More system information commands
- Improved administrator/root interface
- More networking commands
- Custom startup messages
- Configuration/settings support
- More terminal animations and effects

> 💬 Have another idea? Feel free to suggest it!

## 📜 License

You are free to modify this project for personal use.

If you redistribute a modified version, consider giving credit to the original creator .

## ⭐ Credits

**Created by Asdi Classes (ME) **

Built with:

- Windows Batch Script
- Windows Command Prompt
- Native Windows commands
- ANSI escape sequences
