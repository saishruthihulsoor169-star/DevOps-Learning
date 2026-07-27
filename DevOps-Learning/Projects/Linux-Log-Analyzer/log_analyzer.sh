#!/bin/bash

LOG_FILE=$1

if [ -z "$LOG_FILE"]
then 
     echo "Usage: ./analyze.sh <logfile>"
     exit
fi
   if [ ! -f "$LOG_FILE" ]
then
    echo "File not found!"
    exit 1
fi
show_header() {
    echo "========== SERVER REPORT =========="
    echo
}

show_date() {
    echo "Date & Time:"
    date
    echo
}
 

count_info() {
    INFO_COUNT=$(grep -c "INFO" "$LOG_FILE")
    echo "INFO : $INFO_COUNT"
}

count_warning() {
    WARNING_COUNT=$(grep -c "WARNING" "$LOG_FILE")
    echo "WARNING : $WARNING_COUNT"
}

count_errors() {
    ERROR_COUNT=$(grep -c "ERROR" "$LOG_FILE")
    echo "ERROR : $ERROR_COUNT"

    echo
    echo "Errors Found:"
    grep "ERROR" "$LOG_FILE"
    echo
}

server_status() {
    if [ "$ERROR_COUNT" -eq 0 ]
    then
        echo "Status : Server Healthy"
    else
        echo "Status : Server Needs Attention"
    fi
}

{
show_header
show_date
read_log_file
count_info
count_warning
count_errors
server_status
} | tee report.txt
