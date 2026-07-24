#!/bin/bash

LOGFILE="server.log"

echo "========== Linux Log Analyzer =========="

echo
echo "Total Lines:"
wc -l < "$LOGFILE"

echo
echo "Error Count:"
grep -c "ERROR" "$LOGFILE"

echo
echo "Warning Count:"
grep -c "WARNING" "$LOGFILE"

echo
echo "Info Count:"
grep -c "INFO" "$LOGFILE"

echo
echo "Errors Found:"
grep "ERROR" "$LOGFILE"

echo
echo "Analysis Completed."