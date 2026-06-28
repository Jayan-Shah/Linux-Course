# 📍 Chapter 05: Absolute vs Relative Paths

> **"Before Linux can find a file, you must tell it where to look."**

---

# 🤔 Think Before You Learn

Imagine your friend calls you and asks:

> "Come to my house."

You ask,

> "Where is your house?"

Your friend replies,

> "It's next to me."

Can you find it?

Of course not.

Now imagine your friend says:

> "221B Baker Street, London."

Now you know exactly where to go.

Computers face the same problem.

Whenever Linux needs to locate a file, it needs a path.

There are two ways to describe that path.

---

# 🌍 A Real-Life Analogy

Imagine you're inside a shopping mall.

You want to reach a bookstore.

There are two ways someone can guide you.

### Option 1

> Start from the main entrance.

Walk straight.

Take the escalator.

Turn left.

The bookstore is on the second floor.

This route always works because it starts from the same place.

This is like an **Absolute Path**.

---

### Option 2

Suppose you're already standing near the food court.

Someone says,

> Walk straight and turn right.

This route only works because it depends on **where you're currently standing**.

This is like a **Relative Path**.

---

# 📖 What is an Absolute Path?

An **Absolute Path** always starts from the **Root Directory (`/`)**.

It tells Linux the complete location of a file.

Example:

```text
/home/jayan/Documents/Linux-Notes.pdf
```

No matter where you currently are in the filesystem, this path always points to the same file.

Think of it as a **full postal address**.

---

# 📖 What is a Relative Path?

A **Relative Path** starts from your **current working directory**.

It does not begin with `/`.

Example:

```text
Documents/Linux-Notes.pdf
```

Whether this path works depends on your current location.

Think of it as **giving directions from where you already are**.

---

# 🔍 Absolute vs Relative Path

| Absolute Path                      | Relative Path                     |
| ---------------------------------- | --------------------------------- |
| Starts with `/`                    | Does not start with `/`           |
| Always points to the same location | Depends on your current location  |
| Complete path                      | Partial path                      |
| Works from anywhere                | Works only from certain locations |

---

# 🌟 Examples

Suppose your current directory is:

```text
/home/jayan
```

The following paths point to the same file.

### Absolute Path

```text
/home/jayan/Documents/report.pdf
```

### Relative Path

```text
Documents/report.pdf
```

The relative path works because you're already inside `/home/jayan`.

---

# 💻 Try It Yourself

You'll explore these commands in the practice section, but here's the idea.

Find your current location:

```bash
pwd
```

Move into another directory:

```bash
cd Documents
```

Check your location again:

```bash
pwd
```

Observe how your **current directory** changes, while the **absolute path** to the file remains the same.

---

# 🧩 Mini Challenge

Imagine your current directory is:

```text
/home/alice
```

Where does each path point?

```text
Documents/report.txt
```

```text
/home/alice/Documents/report.txt
```

Can you identify which one is **relative** and which one is **absolute**?

---

# 🧠 Key Takeaways

* A path tells Linux where to find a file.
* Absolute paths always begin with `/`.
* Relative paths depend on your current directory.
* Absolute paths always point to the same location.
* Relative paths are shorter and convenient when you're already in the correct directory.

---

# 💡 Did You Know?

Almost every Linux command that works with files accepts **both absolute and relative paths**.

As you become more comfortable with Linux, you'll naturally switch between them depending on the situation.

---

# ✅ Check Your Understanding

Before moving to the next chapter, make sure you can answer:

* What is a path?
* Why does Linux need paths?
* What is the difference between an absolute path and a relative path?
* When would you choose one over the other?

If you can answer these questions confidently, you're ready for one of Linux's most fascinating ideas.

---

# 🚀 Next Chapter

➡️ **Chapter 06 – Everything is a File**
