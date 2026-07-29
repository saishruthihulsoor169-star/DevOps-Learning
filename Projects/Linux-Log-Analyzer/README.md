# Linux Log Analyzer

A beginner-friendly Bash project that analyzes a Linux server log file.


## Features

- Analyze Linux log files
- Count INFO messages
- Count WARNING messages
- Count ERROR messages
- Generate server report
- Save report automatically
- Display current date and time
- Determine server health
- Validate log file existence

## Technologies

- Linux
- Bash
- grep
- wc

## How to Run

```bash
chmod +x log_analyzer.sh
./log_analyzer.sh
```
##sample output

<img width="1872" height="1003" alt="Screenshot (421)" src="https://github.com/user-attachments/assets/f48ae7a6-7b01-485f-b9e3-cbddb1fd9f5a" />


## Version History

### Version 1
- Basic Log Analyzer

### Version 2
- Added report generation
- Added date & time
- Added server health check

### Version 3
- Refactored into reusable Bash functions
- Improved readability and maintainability

## Version 4 - Command-Line Arguments

### New Features

- Accepts the log filename as a command-line argument (`$1`)
- Checks for missing arguments using `-z`
- Validates whether the specified file exists
- Generates the report on the terminal and saves it to `report.txt`
- Improved usability to behave like a standard Linux command

### Usage

```bash
./analyze.sh server.log
```