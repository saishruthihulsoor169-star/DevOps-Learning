# Day 7 - Command-Line Arguments

## Objective

Learn how to make Bash scripts reusable by accepting input from the command line.

## Topics Covered

- `$1`, `$2`, `$3`
- `-z` (empty string check)
- `exit 1`
- File validation
- Command-line arguments

## Why It Matters

Instead of editing the script for each log file, users can simply provide the filename when running the script.

Example:

```bash
./analyze.sh server.log
./analyze.sh database.log
```

## Real-World Use Cases

- Analyze different server logs
- Run backup scripts on different folders
- Pass configuration files to deployment scripts

## Status

✅ Completed Day 7