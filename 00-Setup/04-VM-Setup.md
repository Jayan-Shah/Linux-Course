# 🖥️ Virtual Machine (VM) Setup Guide

> **Estimated Time:** 15–30 Minutes
> **Difficulty:** ⭐⭐ Beginner to Intermediate
> **Recommended For:** Students who want a full Linux desktop environment.

> ⚠️ **This setup is optional.** The official environment for this course is **Docker**.

---

# 🤔 What is a Virtual Machine?

A Virtual Machine (VM) is software that allows you to run one operating system inside another.

For example, you can run Ubuntu Linux inside Windows or macOS without replacing your current operating system.

```text
+----------------------------------------+
|           Host Operating System        |
|      (Windows / macOS / Linux)         |
|                                        |
|  +----------------------------------+  |
|  |        Virtual Machine           |  |
|  |----------------------------------|  |
|  | Ubuntu Linux                     |  |
|  | bash                             |  |
|  | ls                               |  |
|  | pwd                              |  |
|  | grep                             |  |
|  +----------------------------------+  |
+----------------------------------------+
```

Think of it as having another computer running inside your computer.

---

# ✅ Advantages

* Full Linux desktop experience
* Safe environment for experimentation
* Great for learning system administration
* Easy to reset using snapshots
* No impact on your primary operating system

---

# 📋 Requirements

Recommended minimum specifications:

| Resource | Recommended |
| -------- | ----------- |
| CPU      | 2 Cores     |
| RAM      | 4 GB        |
| Storage  | 25 GB       |
| Internet | Required    |

---

# 📥 Step 1: Install Virtualization Software

Choose one:

* Oracle VirtualBox (Free)
* VMware Workstation / VMware Fusion
* UTM (Recommended for Apple Silicon Macs)

Install the software before continuing.

---

# 🐧 Step 2: Download Ubuntu

Download the latest Ubuntu LTS Desktop ISO.

The Desktop edition provides a graphical interface while still supporting all terminal commands used in this course.

---

# 🆕 Step 3: Create a New Virtual Machine

Create a new VM with approximately:

* Name: `Linux-Course`
* Operating System: Linux
* Distribution: Ubuntu (64-bit)

Allocate:

* 2 CPU cores
* 4 GB RAM
* 25 GB Disk

---

# 💿 Step 4: Attach the Ubuntu ISO

Configure the virtual optical drive to boot from the Ubuntu ISO you downloaded.

Start the VM.

---

# ⚙️ Step 5: Install Ubuntu

Follow the installation wizard.

Recommended options:

* Normal Installation
* Erase Disk (inside the VM only)
* Create your own username and password

Remember these credentials—you'll use them throughout the course.

---

# 🔄 Step 6: Restart

After installation completes:

* Remove the ISO if prompted.
* Restart the virtual machine.
* Log in using your new account.

---

# ✅ Step 7: Update Ubuntu

Open Terminal and run:

```bash
sudo apt update
sudo apt upgrade -y
```

---

# 🔍 Step 8: Verify Installation

Run:

```bash
pwd
whoami
hostname
uname -a
cat /etc/os-release
```

If these commands execute successfully, your VM is ready.

---

# 🧪 Mini Exercise

Try creating your first Linux workspace:

```bash
mkdir linux-practice

cd linux-practice

touch hello.txt

echo "Learning Linux in a Virtual Machine!" > hello.txt

cat hello.txt
```

Expected output:

```text
Learning Linux in a Virtual Machine!
```

---

# 📂 Useful Commands

Check your current directory:

```bash
pwd
```

List files:

```bash
ls
```

Display your username:

```bash
whoami
```

Display OS information:

```bash
cat /etc/os-release
```

---

# ❓ Common Issues

## Ubuntu boots into a black screen

Make sure virtualization is enabled in your BIOS/UEFI settings and that your virtualization software supports your hardware.

---

## VM is slow

Increase RAM or CPU allocation if your host machine has available resources.

---

## Screen resolution is incorrect

Install the guest additions/tools provided by your virtualization platform.

---

## No internet connection

Verify that the VM network adapter is configured for NAT or Bridged mode.

---

# 🏆 Mini Challenge

Complete the following without referring back to the instructions:

1. Create a directory named `day1`.
2. Enter the directory.
3. Create a file called `notes.txt`.
4. Write `Linux in a VM is working!` into the file.
5. Display the file contents.
6. Log out or shut down the VM.
7. Start it again.
8. Verify that the file still exists.

If you complete this successfully, your virtual machine is ready for the course.

---

# 🎓 Which Setup Should I Use?

| Setup               | Recommendation                               |
| ------------------- | -------------------------------------------- |
| 🐳 Docker           | ⭐⭐⭐⭐⭐ Best choice for this course            |
| 🪟 WSL 2            | ⭐⭐⭐⭐ Excellent for Windows users             |
| ☁️ AWS EC2          | ⭐⭐⭐ Good for cloud learning                  |
| 🖥️ Virtual Machine | ⭐⭐⭐ Good for a full desktop Linux experience |

For consistency across all labs and exercises, **Docker remains the recommended setup method.**

---

# 🚀 Next Step

Your Linux environment is now ready.

Proceed to:

```text
01-Introduction/
```

where you'll begin exploring Linux fundamentals and solving your first hands-on challenges.
