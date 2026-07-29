# Day 8 - Bash Loops

## Objective

Learn how to automate repetitive tasks using Bash loops.

## Topics Covered

- for loop
- while loop
- Wildcards (`*.log`)
- Multi-file automation

## Why Use Loops?

Instead of running a script separately for every log file, a loop processes all matching files automatically.

Example:

```bash
for LOG_FILE in *.log
do
    echo "$LOG_FILE"
done
```

## Real-World DevOps Use Cases

- Analyze multiple log files
- Backup files
- Restart multiple services
- Deploy applications to multiple servers

## Status

✅ Completed Day 9