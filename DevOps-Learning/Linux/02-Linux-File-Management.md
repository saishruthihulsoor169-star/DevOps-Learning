# Day 2 - Linux File Management

## Objective
Learn how to create, copy, move, rename, and delete files and directories using Linux commands.

---

## Commands Learned

### 1. Create a File
```bash
touch notes.txt
```

Creates an empty file.

---

### 2. Create a Directory
```bash
mkdir DevOps
```

Creates a new folder.

---

### 3. List Files
```bash
ls
```

Lists files and folders.

---

### 4. Copy Files
```bash
cp notes.txt backup.txt
```

Creates a copy of a file.

---

### 5. Copy Directory
```bash
cp -r DevOps DevOps_Backup
```

Copies an entire directory.

---

### 6. Move or Rename File
```bash
mv notes.txt linux_notes.txt
```

Moves or renames a file.

---

### 7. Delete File
```bash
rm backup.txt
```

Deletes a file permanently.

---

### 8. Delete Directory
```bash
rm -r DevOps_Backup
```

Deletes a directory and its contents.

---

### 9. Display File Content
```bash
cat linux_notes.txt
```

Shows the contents of a file.

---

### 10. Clear Terminal
```bash
clear
```

Clears the terminal screen.

---

## Mini Practice

Created:

- notes.txt
- DevOps/

Copied:

- notes.txt → backup.txt

Renamed:

- notes.txt → linux_notes.txt

Deleted:

- backup.txt

Displayed file using:

```bash
cat linux_notes.txt
```

---

## Key Learnings

- Linux provides powerful file management through the terminal.
- `cp` copies files and folders.
- `mv` moves or renames files.
- `rm` permanently deletes files.
- `cat` displays file contents.
- These commands are used daily by DevOps Engineers.

---

## Real-World Use Case

A DevOps Engineer frequently uses these commands while:

- Managing project files
- Deploying applications
- Organizing server directories
- Backing up configuration files
- Cleaning log files

---

## Status

✅ Completed Day 2