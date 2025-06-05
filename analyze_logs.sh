#!/bin/bash

LOG_DIR="hospital_data/active_logs"
REPORT_FILE="reports/analysis_report.txt"

echo "Select log file to analyze:"
echo "1) Heart Rate (heart_rate.log)"
echo "2) Temperature (temperature.log)"
echo "3) Water Usage (water_usage.log)"
read -p "Enter choice (1-3): " choice

#DIVIN ADD YOUR CODE UNDER THIS COMMENT

log_path="$LOG_DIR/$file"

if [[ ! -f "$log_path" ]]; then
	echo "Log file not found: $log_path"
	exit 1
fi

