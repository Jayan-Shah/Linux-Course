# 🚀 Linux Range Firewall Mission

Welcome to the **Linux Range Firewall Mission**.

This repository contains a series of hands-on Linux missions designed to test and improve your Linux and firewall skills.

---

# 📋 Prerequisites

Make sure you have the following installed:

- Git
- Docker
- Docker Compose

---

# 🛠️ Setup

## 1. Clone the Repository

```bash
git clone <your-repository-url>
cd <repository-folder>
```

## 2. Build and Start the Environment

```bash
docker-compose up -d --build
```

Wait until all containers are successfully built and running.

---

## 3. Enter the Mission Container

```bash
docker exec -it linux_range_firewall /bin/bash
```

You are now inside the mission environment.

---

# 🎯 Starting Missions

To start a mission, type:

```bash
mission <number>
```

For example:

```bash
mission 1
mission 2
mission 3
...
mission 7
```

Complete the missions **in sequential order**.

---

# ✅ Validating Missions

For Missions **1–4**, validate your progress using:

```bash
validate 1
validate 2
validate 3
validate 4
```

If your solution is correct, the validation script will confirm your completion.

---

# 🏁 Missions 5–7

Missions **5**, **6**, and **7** do **not** require the `validate` command.

Each of these missions contains a built-in **flag**.

Your objective is to:

- Complete the mission.
- Locate the flag.
- Submit the flag according to the instructions provided during the mission.

Mission **7** is the **final mission**.

---

# 📌 Mission Flow

```text
Clone Repository
        │
        ▼
docker-compose up -d --build
        │
        ▼
docker exec -it linux_range_firewall /bin/bash
        │
        ▼
mission 1
        │
        ▼
validate 1
        │
        ▼
mission 2
        │
        ▼
validate 2
        │
        ▼
mission 3
        │
        ▼
validate 3
        │
        ▼
mission 4
        │
        ▼
validate 4
        │
        ▼
mission 5
        │
        ▼
Find the Flag
        │
        ▼
mission 6
        │
        ▼
Find the Flag
        │
        ▼
mission 7
        │
        ▼
Find the Final Flag 🎉
```

---

# ⚠️ Rules

- Complete missions in order.
- Do not skip missions.
- Read each mission carefully before attempting it.
- Use only the tools available inside the container unless instructed otherwise.
- Think before executing commands.

---

# 🎉 Good Luck!

Happy hacking, and enjoy the Linux Range Firewall Mission!