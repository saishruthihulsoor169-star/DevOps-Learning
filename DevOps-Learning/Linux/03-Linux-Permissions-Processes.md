# Day 3 - Linux Permissions & Process Management

## 🎯 Objective

Learn how Linux controls file access using permissions and how to view and manage running processes.

---

# Part 1: Linux Permissions

## Why Permissions Matter

Linux protects files by controlling who can:

- Read (r)
- Write (w)
- Execute (x)

Every file has permissions for:

- Owner
- Group
- Others

---

## View Permissions

```bash
ls -l
```

Example:

```text
-rwxr-xr-- 1 user user 512 Jul 23 script.sh
```

Meaning:

| User | Permission |
|------|------------|
| Owner | rwx |
| Group | r-x |
| Others | r-- |

---

## Permission Symbols

| Symbol | Meaning |
|---------|---------|
| r | Read |
| w | Write |
| x | Execute |

---

## Change Permissions

```bash
chmod +x script.sh
```

Adds execute permission.

---

```bash
chmod -w notes.txt
```

Removes write permission.

---

```bash
chmod 755 script.sh
```

Numeric permissions:

| Number | Meaning |
|--------|----------|
| 7 | rwx |
| 6 | rw- |
| 5 | r-x |
| 4 | r-- |

---

## Change File Owner

```bash
chown username file.txt
```

Changes file owner.

---

## Mini Practice

Created:

```bash
touch demo.txt
```

Checked permissions:

```bash
ls -l
```

Made executable:

```bash
chmod +x demo.txt
```

Observed the permission changes.

---

# Part 2: Process Management

## What is a Process?

A process is a running program.

Examples:

- Chrome
- VS Code
- Python program
- Docker

---

## View Running Processes

```bash
ps
```

Shows current terminal processes.

---

```bash
ps -ef
```

Shows all running processes.

---

## Real-Time Process Monitoring

```bash
top
```

Displays:

- CPU Usage
- Memory Usage
- Running Processes

Press:

```
q
```

to exit.

---

## Find Process ID

```bash
ps -ef
```

Example:

```text
python   2480
```

2480 is the PID (Process ID).

---

## Kill a Process

```bash
kill PID
```

Example:

```bash
kill 2480
```

Force kill:

```bash
kill -9 2480
```

---

## Background Process

```bash
sleep 60 &
```

Runs the command in the background.

Check:

```bash
jobs
```

---

## Mini Practice

Started a background process:

```bash
sleep 60 &
```

Checked:

```bash
jobs
```

Viewed processes:

```bash
ps
```

Stopped process:

```bash
kill PID
```

---

# Real-World DevOps Use Cases

DevOps Engineers use these commands to:

- Secure application files
- Give execution permission to deployment scripts
- Monitor server CPU usage
- Stop stuck applications
- Manage background services
- Debug production servers

---

# Key Learnings

✅ Linux uses Read, Write and Execute permissions.

✅ chmod changes permissions.

✅ chown changes file ownership.

✅ ps lists running processes.

✅ top monitors system performance.

✅ kill terminates processes.

---

# Status

✅ Completed Day 3