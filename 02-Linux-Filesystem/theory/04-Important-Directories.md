# 📂 Chapter 04: Important Linux Directories

> **"Linux organizes its files the way a well-designed city organizes its buildings—everything has a purpose and a place."**

---

# 🤔 Think Before You Learn

Imagine you're designing an operating system from scratch.

Ask yourself these questions before reading further.

### 🏠 Question 1

A user wants to store:

* Photos
* Documents
* Videos
* College Assignments

Where should Linux keep these files?

Should they be mixed with system files?

Or should every user have their own personal space?

👉 Linux solves this using **`/home`**.

---

### ⚙️ Question 2

Suppose Linux needs to remember:

* Wi-Fi settings
* SSH configuration
* DNS settings
* User accounts

Even after the computer restarts...

Where should all these settings be stored?

👉 Linux stores them inside **`/etc`**.

---

### 📄 Question 3

A web server runs 24×7.

Every second it generates new log entries.

Where should Linux continuously write this changing information?

👉 Linux stores this type of data inside **`/var`**.

---

### 📦 Question 4

You install a new application.

Where should Linux keep the application files so every user can use them?

👉 Linux stores most installed software inside **`/usr`**.

---

### 📝 Question 5

A program needs a place to create temporary files while it's running.

After the program finishes, those files are no longer needed.

Where should they go?

👉 Linux uses **`/tmp`**.

---

### 🛠 Question 6

Imagine Linux starts but cannot find the `ls` or `cp` commands.

How would you even use the system?

Essential commands must always be available.

👉 That's why Linux stores them inside **`/bin`**.

---

# 🌳 Why Does Linux Do This?

Linux separates different types of data because it makes the system:

* Easier to organize
* Easier to secure
* Easier to maintain
* Easier to back up
* Easier to troubleshoot

Instead of putting everything into one giant folder, every directory has a clearly defined responsibility.

Now that you've answered the questions, let's explore each directory in detail.
