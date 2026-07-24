# Day 4 - Shell Scripting

## 🎯 Objective

Learn the basics of Bash (Shell) scripting to automate repetitive Linux tasks.

---

# What is Shell Scripting?

A shell script is a text file containing Linux commands that are executed one after another.

Instead of typing commands repeatedly, we can automate them using a script.

File extension:

```bash
.sh
```

---

# Create a Shell Script

```bash
touch hello.sh
```

---

# Basic Script

```bash
#!/bin/bash

echo "Hello DevOps!"
```

Run:

```bash
chmod +x hello.sh
./hello.sh
```

Output:

```
Hello DevOps!
```

---

# Variables

```bash
#!/bin/bash

name="Sonu"

echo "Welcome $name"
```

---

# User Input

```bash
#!/bin/bash

echo "Enter your name:"
read name

echo "Hello $name"
```

---

# If Statement

```bash
#!/bin/bash

age=20

if [ $age -ge 18 ]
then
    echo "Adult"
else
    echo "Minor"
fi
```

---

# For Loop

```bash
#!/bin/bash

for i in 1 2 3 4 5
do
    echo $i
done
```

---

# While Loop

```bash
count=1

while [ $count -le 5 ]
do
    echo $count
    ((count++))
done
```

---

# Functions

```bash
greet(){

echo "Welcome to DevOps"

}

greet
```

---

# Useful Variables

```bash
$USER
$HOME
$PWD
$PATH
```

---

# Key Learnings

✅ Automate Linux tasks

✅ Store values in variables

✅ Accept user input

✅ Use loops

✅ Use conditions

✅ Create reusable functions

---

# Real-World DevOps Use Cases

- Server deployment
- Backup automation
- Health checks
- Log monitoring
- User creation
- Cron jobs
- CI/CD automation

---

# Status

✅ Completed Day 4