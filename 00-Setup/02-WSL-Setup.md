# 🪟 Windows Subsystem for Linux (WSL 2) Setup

> **Estimated Time:** 10 Minutes
> **Difficulty:** ⭐ Beginner
> **Recommended For:** Windows Users

If you're using **Windows 10 or Windows 11**, WSL (Windows Subsystem for Linux) allows you to run Ubuntu directly on your machine without installing a virtual machine.

> **Note:** The official environment for this course is Docker. WSL is provided as an alternative.

---

# 🤔 What is WSL?

WSL allows Windows to run a real Linux environment alongside Windows.

```text
+--------------------------------------+
|            Windows 11                |
|                                      |
|  +-------------------------------+   |
|  |        Ubuntu (WSL 2)         |   |
|  |-------------------------------|   |
|  | bash                          |   |
|  | ls                            |   |
|  | pwd                           |   |
|  | grep                          |   |
|  +-------------------------------+   |
+--------------------------------------+
```

You can use Linux commands directly from your Windows machine.

---

# ✅ Prerequisites

* Windows 10 (Version 2004 or later)
* Windows 11
* Administrator access
* Internet connection

---

# 🚀 Step 1: Install WSL

Open **PowerShell as Administrator** and run:

```powershell
wsl --install
```

This command automatically:

* Enables WSL
* Downloads Ubuntu
* Configures the required components

Restart your computer if prompted.

---

# 👤 Step 2: Create Your Linux User

The first time Ubuntu starts, it will ask you to create:

* A username
* A password

Example:

```text
Enter new UNIX username: student

New password:

Retype new password:
```

This account will be your Linux user for the course.

---

# 🔄 Step 3: Update Ubuntu

Run:

```bash
sudo apt update
sudo apt upgrade -y
```

---

# ✅ Step 4: Verify Installation

Run:

```bash
pwd
whoami
hostname
uname -a
cat /etc/os-release
```

If these commands execute successfully, your WSL environment is ready.

---

# 🧪 Mini Exercise

Try the following:

```bash
mkdir linux-course
cd linux-course

touch hello.txt

echo "Hello from WSL!" > hello.txt

cat hello.txt
```

Expected output:

```text
Hello from WSL!
```

---

# 🔍 Useful WSL Commands

Open Ubuntu:

```powershell
wsl
```

List installed distributions:

```powershell
wsl --list
```

Check WSL status:

```powershell
wsl --status
```

Shut down WSL:

```powershell
wsl --shutdown
```

---

# ❓ Common Issues

## `wsl: command not found`

Ensure you're using Windows 10/11 and that WSL is installed correctly.

## Ubuntu doesn't start

Restart your computer and try again.

## Forgot your Linux password

You can reset it by starting WSL as root and changing the password, or reinstall the distribution if it's a fresh setup.

---

# 🏆 Challenge

Complete the following:

1. Open Ubuntu.
2. Create a folder named `practice`.
3. Enter the folder.
4. Create a file called `notes.txt`.
5. Write `Learning Linux with WSL` into the file.
6. Display the contents of the file.
7. Close WSL.
8. Open it again.
9. Verify that `notes.txt` still exists.

If you can complete this challenge, your WSL environment is ready for the rest of the course.

---

# ➡️ Next Step

Proceed to:

```text
01-Introduction/
```

and begin your Linux journey! 🐧
