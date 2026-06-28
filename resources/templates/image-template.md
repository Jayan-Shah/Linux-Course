# 🎨 Image & Diagram Style Guide

> **Purpose:** This document defines the visual identity of the Linux Course. Every diagram, illustration, flowchart, infographic, and architecture image must follow this guide to maintain a consistent and professional appearance throughout the repository.

---

# 🎯 Goal

Every image should be:

* Easy to understand
* Minimalistic
* Professional
* Consistent
* Beginner-friendly
* GitHub friendly

Students should recognize an image as part of this course without even seeing the repository name.

---

# 📐 Canvas Size

## Standard

```text
1920 × 1080 px
```

Aspect Ratio

```text
16:9
```

---

## Large Architecture Diagram

```text
2560 × 1440 px
```

---

## Icons

```text
512 × 512 px
```

---

# 🎨 Color Palette

## Primary Blue

```text
#2563EB
```

Used for:

* Main boxes
* Titles
* Important concepts

---

## Green

```text
#16A34A
```

Used for:

* Success
* Correct flow
* Positive outcomes

---

## Yellow

```text
#F59E0B
```

Used for:

* Warnings
* Notes
* Tips

---

## Red

```text
#DC2626
```

Used for:

* Errors
* Mistakes
* Dangerous commands

---

## Gray

```text
#64748B
```

Used for:

* Secondary text
* Labels
* Descriptions

---

## Background

```text
#FFFFFF
```

White only.

No gradients.

No textures.

---

# 🔤 Typography

## Font

Use

```text
Inter
```

for everything.

---

## Title

```text
Inter Bold

40px
```

---

## Heading

```text
Inter SemiBold

30px
```

---

## Body

```text
Inter Regular

22px
```

---

## Labels

```text
Inter Medium

18px
```

---

# 📦 Boxes

Every box should have

```text
Corner Radius

16px
```

---

Border

```text
2px
```

---

Padding

```text
24px
```

---

Never use shadows.

Keep everything flat.

---

# ➡️ Arrows

Use only

* Straight arrows
* Right-angle arrows

Avoid curved arrows unless absolutely necessary.

Arrow thickness

```text
3px
```

Color

```text
#2563EB
```

---

# 🎭 Icons

Use only one icon pack.

Recommended

```text
Lucide Icons
```

Examples

🏠 Home

👤 User

💻 Terminal

⚙️ Configuration

📁 Folder

🗂 Directory

🖥 Computer

🔒 Security

🌐 Network

📦 Package

Never mix icon styles.

---

# 🖼️ Image Layout

Every image should follow this structure.

```text
Title

↓

Subtitle

↓

Main Diagram

↓

Key Takeaway
```

Never fill the image with paragraphs.

Images explain.

Markdown teaches.

---

# 🏷 Naming Convention

Every asset should use lowercase.

Example

```text
filesystem-tree.png

filesystem-tree.svg

linux-architecture.png

linux-architecture.svg

absolute-paths.png
```

Never use spaces.

---

# 📂 Storage

All assets belong inside

```text
assets/
```

Each module has its own assets folder.

Example

```text
02-Linux-Filesystem/

assets/
```

---

# 📄 Export Formats

Every diagram should be exported as:

```text
PNG
```

and

```text
SVG
```

SVG is used for scalability.

PNG is used for GitHub preview.

---

# 🚫 Avoid

❌ Clipart

❌ Random colors

❌ Different fonts

❌ Emojis inside diagrams

❌ Paragraphs inside images

❌ Low-resolution exports

❌ Watermarks

❌ Inconsistent spacing

---

# 📚 Image Categories

Every image belongs to one of these categories.

## Architecture

Example

Linux Architecture

Docker Architecture

Networking Stack

---

## Flowchart

Example

Command Execution

Linux Boot Process

SSH Authentication

---

## Comparison

Example

Linux vs Windows

Absolute vs Relative Paths

TCP vs UDP

---

## Hierarchy

Example

Filesystem Tree

Permission Model

Process Tree

---

## Timeline

Example

Linux Boot Sequence

TCP Handshake

---

## Concept

Example

Everything is a File

Kernel vs Shell

Users vs Groups

---

# ✅ Image Quality Checklist

Before publishing an image, verify:

* [ ] Correct canvas size.
* [ ] White background.
* [ ] Inter font used.
* [ ] Lucide icons used.
* [ ] Consistent colors.
* [ ] Consistent spacing.
* [ ] PNG exported.
* [ ] SVG exported.
* [ ] File named correctly.
* [ ] Fits inside GitHub README.
* [ ] Easy to understand within 10 seconds.

If every checkbox is complete, the image is ready to publish.

---

# 🌟 Final Principle

> **A learner should understand the diagram in less than 10 seconds.**

If an image needs a paragraph to explain it, the image should be redesigned.
