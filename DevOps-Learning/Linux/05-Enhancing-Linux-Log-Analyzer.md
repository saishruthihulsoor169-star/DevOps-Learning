# Day 5 - Enhancing Linux Log Analyzer

## 🎯 Objective

Improve the Bash Log Analyzer by adding automation and report generation.

---

## Features Added

✅ Display current date and time

✅ Save analysis to `report.txt`

✅ Store ERROR count in a variable

✅ Determine server health automatically

---

## Display Current Date

```bash
date
```

Example:

```
Sat Jul 25 19:30:15 IST 2026
```

---

## Save Output to File

Overwrite:

```bash
echo "===== SERVER REPORT =====" > report.txt
```

Append:

```bash
echo "INFO : 3" >> report.txt
```

---

## Variables

```bash
ERROR_COUNT=$(grep "ERROR" "$LOG_FILE" | wc -l)
```

Display:

```bash
echo "ERROR : $ERROR_COUNT"
```

---

## If Statement

```bash
if [ "$ERROR_COUNT" -eq 0 ]
then
    echo "Status : Server Healthy"
else
    echo "Status : Server Needs Attention"
fi
```

---

## Concepts Learned

- Variables
- Command substitution
- Output redirection
- Conditional statements
- Automation

---

## Real-World Use Case

DevOps Engineers automate log monitoring to detect system failures early and generate reports for troubleshooting.

---

## Status

✅ Completed Day 5