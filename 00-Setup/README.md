# 🛠️ Linux Environment Setup

Welcome to the setup section of the Linux Course!

Before diving into Linux commands and hands-on labs, you need a Linux environment where you can safely experiment.

---

# 🎯 Which Setup Should You Choose?

| Setup Method        | Difficulty | Performance | Recommended For               | Status        |
| ------------------- | ---------- | ----------- | ----------------------------- | ------------- |
| 🐳 Docker           | ⭐ Easy     | ⭐⭐⭐⭐⭐       | Everyone                      | ✅ Recommended |
| 🪟 WSL 2            | ⭐ Easy     | ⭐⭐⭐⭐⭐       | Windows users                 | ✅ Recommended |
| ☁️ AWS EC2          | ⭐⭐ Medium  | ⭐⭐⭐⭐        | Cloud & SSH practice          | ✅ Optional    |
| 🖥️ Virtual Machine | ⭐⭐ Medium  | ⭐⭐⭐⭐        | Full Linux desktop experience | ✅ Optional    |

---

# 🥇 Option 1: Docker (Recommended)

Docker provides a lightweight Ubuntu environment that runs in an isolated container.

### Advantages

* Same environment for every student
* No dual boot required
* Easy to reset if something breaks
* Fast and lightweight
* Perfect for command-line learning

📄 **Setup Guide:** `01-Docker-Setup.md`

---

# 🥈 Option 2: Windows Subsystem for Linux (WSL)

WSL allows Windows users to run Ubuntu natively without using a virtual machine.

Choose WSL if:

* You primarily use Windows
* You want seamless integration with VS Code
* You prefer a native Linux terminal

📄 **Setup Guide:** `02-WSL-Setup.md`

---

# 🥉 Option 3: AWS EC2

Run Linux on a cloud server and connect remotely using SSH.

Choose EC2 if you want to learn:

* Cloud computing
* Remote server administration
* SSH
* Linux in production environments

📄 **Setup Guide:** `03-EC2-Setup.md`

---

# 🖥️ Option 4: Virtual Machine

Install Ubuntu or another Linux distribution using VirtualBox or VMware.

Choose this option if:

* You want a complete Linux desktop
* Your system has enough RAM and storage
* You enjoy experimenting with operating systems

📄 **Setup Guide:** `04-VM-Setup.md`

---

# ✅ Verify Your Installation

Regardless of which setup method you choose, the following commands should work:

```bash
pwd
whoami
hostname
uname -a
cat /etc/os-release
```

Expected outcome:

* `pwd` prints your current directory.
* `whoami` prints your username.
* `hostname` prints your machine name.
* `uname -a` displays kernel information.
* `cat /etc/os-release` displays your Linux distribution details.

---

# 📌 Recommendation for This Course

For consistency and the best learning experience, **Docker is the officially recommended setup**.

However, all labs and exercises will also work on:

* WSL 2
* Ubuntu installed in a Virtual Machine
* Native Linux installations
* AWS EC2 Ubuntu instances

---

# 🚀 Next Step

Choose your preferred environment and follow its setup guide:

* `01-Docker-Setup.md` ⭐ (Recommended)
* `02-WSL-Setup.md`
* `03-EC2-Setup.md`
* `04-VM-Setup.md`

Once your environment is ready, continue to **`01-Introduction/`** and start learning Linux from the ground up.
