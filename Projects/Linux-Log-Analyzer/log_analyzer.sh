#!/bin/bash

show_header() {
    echo "========== Linux Log Analyzer =========="
    echo
}

show_date() {
    echo "Date & Time:"
    date
    echo
}

analyze_log() {

    LOG_FILE=$1

    if [ ! -f "$LOG_FILE" ]
    then
        echo "$LOG_FILE not found!"
        return
    fi

    INFO_COUNT=$(grep -c "INFO" "$LOG_FILE")
    WARNING_COUNT=$(grep -c "WARNING" "$LOG_FILE")
    ERROR_COUNT=$(grep -c "ERROR" "$LOG_FILE")

    echo "-----------------------------------"
    echo "Log File : $LOG_FILE"
    echo "INFO     : $INFO_COUNT"
    echo "WARNING  : $WARNING_COUNT"
    echo "ERROR    : $ERROR_COUNT"

    if [ "$ERROR_COUNT" -eq 0 ]
    then
        echo "Status   : Server Healthy"
    else
        echo "Status   : Server Needs Attention"
    fi

    echo
}

{
show_header
show_date

for LOG_FILE in *.log
do
    analyze_log "$LOG_FILE"
done

echo "Report Generated Successfully."

} | tee report.txt
