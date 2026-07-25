#!/bin/bash

LOG_FILE="server.log"

if [ ! -f "$LOG_FILE" ]
then
    echo "Log file not found!"
    exit 1
fi

ERROR_COUNT=$(grep -c "ERROR" "$LOG_FILE")
WARNING_COUNT=$(grep -c "WARNING" "$LOG_FILE")
INFO_COUNT=$(grep -c "INFO" "$LOG_FILE")
TOTAL_LINES=$(wc -l < "$LOG_FILE")

{
echo "========== SERVER REPORT =========="
echo
echo "Date & Time:"
date

echo
echo "Total Lines : $TOTAL_LINES"
echo "INFO         : $INFO_COUNT"
echo "WARNING      : $WARNING_COUNT"
echo "ERROR        : $ERROR_COUNT"

echo
echo "Errors Found:"
grep "ERROR" "$LOG_FILE"

echo

if [ "$ERROR_COUNT" -eq 0 ]
then
    echo "Status : Server Healthy"
else
    echo "Status : Server Needs Attention"
fi

echo
echo "Report Generated Successfully."
} | tee report.txt