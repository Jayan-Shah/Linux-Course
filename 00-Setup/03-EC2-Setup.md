# ☁️ AWS EC2 Setup Guide

> **Estimated Time:** 15 Minutes
> **Difficulty:** ⭐⭐ Intermediate
> **Recommended For:** Students interested in Cloud Computing, DevOps, and Remote Linux Administration.

> ⚠️ **This setup is optional.** For this course, we recommend using **Docker** or **WSL**. EC2 is included for learners who want experience working with real cloud servers.

---

# 🤔 What is Amazon EC2?

Amazon EC2 (Elastic Compute Cloud) lets you launch virtual Linux servers in the cloud.

Unlike Docker or WSL, your Linux machine runs on AWS infrastructure and can be accessed remotely using SSH.

```text
          Your Laptop
               │
         SSH Connection
               │
               ▼
     +----------------------+
     |    AWS EC2 Server    |
     |----------------------|
     | Ubuntu Linux         |
     | bash                 |
     | ls                   |
     | pwd                  |
     | grep                 |
     +----------------------+
```

---

# 📋 Prerequisites

Before starting, make sure you have:

* An AWS account
* Internet connection
* Basic familiarity with terminals
* An SSH client (available by default on macOS and Linux)

---

# 🚀 Step 1: Launch an EC2 Instance

1. Log in to the AWS Console.
2. Navigate to **EC2 Dashboard**.
3. Click **Launch Instance**.
4. Choose a name, for example:

```
linux-course
```

---

# 🐧 Step 2: Choose Ubuntu

Select:

```
Ubuntu Server LTS
```

Using Ubuntu ensures all course commands behave as expected.

---

# 💻 Step 3: Choose an Instance Type

For practice purposes, choose a small instance that fits your AWS account and budget.

If you're eligible for AWS Free Tier, select a Free Tier–eligible option.

---

# 🔑 Step 4: Create a Key Pair

Create a new key pair.

Example:

```
linux-course-key
```

Download the `.pem` file and store it safely.

**Do not share this file with anyone.**

---

# 🌐 Step 5: Configure Network Access

Allow:

* ✅ SSH (Port 22)

Restrict access to your own IP address whenever possible.

---

# ▶️ Step 6: Launch the Instance

Click **Launch Instance**.

Wait until the instance status changes to:

```
Running
```

---

# 🌍 Step 7: Find the Public IP

From the EC2 dashboard, note the **Public IPv4 Address**.

Example:

```
18.205.120.15
```

You'll use this address to connect.

---

# 🔐 Step 8: Connect via SSH

First, secure the key file:

```bash
chmod 400 linux-course-key.pem
```

Now connect:

```bash
ssh -i linux-course-key.pem ubuntu@<PUBLIC_IP>
```

Example:

```bash
ssh -i linux-course-key.pem ubuntu@18.205.120.15
```

If prompted:

```
Are you sure you want to continue connecting (yes/no)?
```

Type:

```
yes
```

You should now be inside your cloud-based Ubuntu server.

---

# ✅ Verify the Environment

Run:

```bash
pwd
whoami
hostname
uname -a
cat /etc/os-release
```

Everything should execute successfully.

---

# 🧪 Practice Exercise

Create a directory:

```bash
mkdir ec2-practice
```

Enter it:

```bash
cd ec2-practice
```

Create a file:

```bash
touch notes.txt
```

Write to it:

```bash
echo "Running Linux on AWS EC2!" > notes.txt
```

Read the file:

```bash
cat notes.txt
```

Expected output:

```
Running Linux on AWS EC2!
```

---

# 🔍 Useful Commands

Check your current directory:

```bash
pwd
```

Check your username:

```bash
whoami
```

List files:

```bash
ls
```

Display operating system details:

```bash
cat /etc/os-release
```

Exit the server:

```bash
exit
```

Reconnect anytime using:

```bash
ssh -i linux-course-key.pem ubuntu@<PUBLIC_IP>
```

---

# ⚠️ Common Mistakes

## Permission denied for the key file

Run:

```bash
chmod 400 linux-course-key.pem
```

---

## Connection timed out

Verify:

* The instance is running.
* Port 22 is allowed in the security group.
* You're using the correct public IP.

---

## Permission denied (publickey)

Check:

* You're using the correct `.pem` file.
* You're connecting as the `ubuntu` user.
* The key belongs to this EC2 instance.

---

# 💰 Cost Reminder

Remember to stop or terminate your EC2 instance when you're done if you don't need it running continuously.

Leaving cloud resources running may incur charges depending on your AWS account and usage.

---

# 🏆 Mini Challenge

Without referring back to the instructions:

1. Launch an Ubuntu EC2 instance.
2. Connect using SSH.
3. Create a directory named `linux-course`.
4. Inside it, create a file called `hello.txt`.
5. Write `Hello from AWS EC2` into the file.
6. Display its contents.
7. Exit the server.
8. Reconnect and verify the file still exists.

If you complete this successfully, your EC2 environment is ready for Linux practice.

---

# 🚀 Next Step

Now proceed to:

```
01-Introduction/
```

and begin learning Linux from the ground up.
