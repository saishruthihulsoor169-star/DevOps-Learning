# Day 9 - Linux Cron Jobs

## 🎯 Objective

Learn how Linux Cron Jobs automate tasks by running scripts on a schedule.

---

## What is Cron?

Cron is a Linux service that automatically executes commands or scripts at scheduled times.

Think of it as an alarm clock for your automation scripts.

---

## What is Crontab?

A crontab is a configuration file that stores scheduled Cron jobs.

View scheduled jobs:

```bash
crontab -l
```

Edit scheduled jobs:

```bash
crontab -e
```

---

## Cron Syntax

```
Minute Hour Day Month DayOfWeek Command
```

Example:

```bash
0 9 * * * /home/user/analyze.sh
```

Meaning:

- Minute = 0
- Hour = 9
- Day = Every day
- Month = Every month
- Day of Week = Every day

Runs every day at **9:00 AM**.

---

## Common Examples

Every day at midnight:

```bash
0 0 * * * script.sh
```

Every hour:

```bash
0 * * * * script.sh
```

Every Sunday at 2 AM:

```bash
0 2 * * 0 script.sh
```

Every 5 minutes:

```bash
*/5 * * * * script.sh
```

---

## Real DevOps Use Cases

- Database backups
- Log monitoring
- Disk usage reports
- Security scans
- Restarting services
- Cleaning old log files

---

## Key Learnings

- Cron automates repetitive tasks.
- Crontab stores Cron schedules.
- Cron is commonly used for server maintenance.
- Git Bash on Windows doesn't support Cron, but Linux servers do.

---

## Status

✅ Completed Day 9