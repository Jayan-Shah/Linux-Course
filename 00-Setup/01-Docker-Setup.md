# 🐳 Docker Setup for the Linux Course

> **Estimated Time:** 10 Minutes
> **Difficulty:** ⭐ Beginner
> **Recommended For:** Everyone

Welcome! This course officially uses **Docker** to provide a Linux environment.

You do **not** need prior Docker knowledge. In fact, this guide is designed to teach you the basics of Docker while preparing your Linux lab.

---

# 🎯 What You Will Learn

By the end of this guide, you will understand:

* What Docker is
* What an Image is
* What a Container is
* How to create your own Ubuntu Linux environment
* How to exit and re-enter it
* How to automate the process using a simple shell script

---

# 🤔 What is Docker?

Imagine you want to use Ubuntu Linux but don't want to install it directly on your computer.

Docker lets you run Ubuntu inside an isolated environment called a **container**.

Think of it like this:

```text
                Docker
                   │
                   ▼
        +----------------------+
        |   Ubuntu Container   |
        |----------------------|
        | mkdir                |
        | ls                   |
        | pwd                  |
        | cat                  |
        | grep                 |
        +----------------------+
```

You get a real Linux terminal without modifying your operating system.

---

# 📦 Image vs Container

This is one of the most important concepts in Docker.

```
             Ubuntu Image
        (Blueprint / Template)
                  │
                  │ docker run
                  ▼
        +----------------------+
        | linux-course         |
        | Ubuntu Container     |
        |                      |
        | mkdir lab            |
        | touch notes.txt      |
        | cat notes.txt        |
        +----------------------+
```

## Image

An **Image** is a template.

Think of it like:

* 📄 A recipe
* 🏗️ A blueprint
* 📦 A packaged operating system

You cannot "work inside" an image.

---

## Container

A **Container** is a running instance created from an image.

Think of it like:

* 🏠 A house built from a blueprint
* 🚗 A car manufactured from a design
* 👨‍💻 Your personal Linux machine

You perform all your work inside the container.

---

# 🚀 Step 1: Install Docker

Install Docker Desktop for your operating system.

After installation, verify it works:

```bash
docker --version
```

Example:

```text
Docker version 28.x.x
```

---

# 📥 Step 2: Download Ubuntu

Run:

```bash
docker pull ubuntu:24.04
```

What happened?

* Docker contacted Docker Hub.
* It downloaded the Ubuntu image.
* The image is now stored on your computer.

You only need to do this once.

---

# 🐧 Step 3: Create Your First Linux Environment

Run:

```bash
docker run -it --name linux-course ubuntu:24.04 bash
```

Congratulations!

You are now inside Ubuntu Linux.

Your prompt may look similar to:

```text
root@abc123def:/#
```

---

# 🧪 Step 4: Verify You're Really in Linux

Run:

```bash
pwd
```

```bash
whoami
```

```bash
hostname
```

```bash
cat /etc/os-release
```

If these commands work, your Linux environment is ready.

---

# 📝 Mini Exercise

Create a directory:

```bash
mkdir practice
```

Enter it:

```bash
cd practice
```

Create a file:

```bash
touch hello.txt
```

Write to it:

```bash
echo "Hello Linux!" > hello.txt
```

Read it:

```bash
cat hello.txt
```

Expected output:

```text
Hello Linux!
```

---

# 🚪 Step 5: Exit Linux

When finished, type:

```bash
exit
```

This closes the Linux shell.

**Important:** Your container is **not deleted**.

It simply stops running.

---

# 🔄 Step 6: Start It Again

Do **NOT** run `docker run` again.

Instead, use:

```bash
docker start -ai linux-course
```

This starts your existing Linux environment exactly where you left off.

---

# ⚠️ Common Beginner Mistake

Many beginners accidentally create multiple containers.

Wrong:

```bash
docker run -it ubuntu:24.04 bash
docker run -it ubuntu:24.04 bash
docker run -it ubuntu:24.04 bash
```

This creates three different containers.

Correct:

```bash
docker run -it --name linux-course ubuntu:24.04 bash
```

Then every other time:

```bash
docker start -ai linux-course
```

---

# 🔍 Useful Docker Commands

See running containers:

```bash
docker ps
```

See all containers:

```bash
docker ps -a
```

Stop your container:

```bash
docker stop linux-course
```

Delete your container:

```bash
docker rm linux-course
```

Delete a running container:

```bash
docker rm -f linux-course
```

---

# 💡 Understanding What Happened

| Command                         | Meaning                            |
| ------------------------------- | ---------------------------------- |
| `docker pull ubuntu:24.04`      | Download Ubuntu                    |
| `docker run ...`                | Create a new Linux machine         |
| `exit`                          | Leave the Linux shell              |
| `docker start -ai linux-course` | Start the same Linux machine again |
| `docker ps`                     | Show running containers            |
| `docker ps -a`                  | Show all containers                |

---

# 🚀 Bonus: Automate It Yourself

Instead of typing long Docker commands every time, you can create your own helper script.

Create a file named:

```text
start-linux.sh
```

Paste the following:

```bash
#!/bin/bash

CONTAINER="linux-course"

if docker ps -a --format '{{.Names}}' | grep -q "^${CONTAINER}$"; then
    echo "🚀 Starting existing container..."
    docker start "$CONTAINER" >/dev/null
else
    echo "📦 Creating Ubuntu container..."
    docker pull ubuntu:24.04
    docker run -dit --name "$CONTAINER" ubuntu:24.04 >/dev/null
fi

echo "🐧 Opening Linux shell..."
docker exec -it "$CONTAINER" bash
```

Make it executable:

```bash
chmod +x start-linux.sh
```

Run it:

```bash
./start-linux.sh
```

🎉 From now on, one command will automatically:

* Download Ubuntu (if needed)
* Create the container (first run only)
* Start it (subsequent runs)
* Open a Linux shell

---

# 🏆 Challenge

Complete the following without looking at the solution:

1. Download Ubuntu.
2. Create a container named `linux-course`.
3. Enter the container.
4. Create a directory called `day1`.
5. Inside it, create a file named `notes.txt`.
6. Write `Linux is awesome!` into the file.
7. Read the file.
8. Exit the container.
9. Start the same container again.
10. Verify that `notes.txt` still exists.

If you can complete this challenge, your Docker and Linux environment are fully set up and you're ready to begin the course.

---

# ➡️ Next Step

Proceed to:

```text
01-Introduction/
```

where you'll learn how Linux works internally and begin solving your first hands-on Linux challenges.
