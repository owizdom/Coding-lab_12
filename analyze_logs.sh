#!/bin/bash

LOG_DIR="hospital_data/active_logs"
REPORT_FILE="reports/analysis_report.txt"

echo "Select log file to analyze:"
echo "1) Heart Rate (heart_rate.log)"
echo "2) Temperature (temperature.log)"
echo "3) Water Usage (water_usage.log)"
read -p "Enter choice (1-3): " choice

case "$choice" in
  1)
    file="heart_rate.log"
    ;;
  2)
    file="temperature.log"
    ;;
  3)
    file="water_usage.log"
    ;;
  *)
    echo "Invalid choice"
    exit 1
    ;;
esac

log_path="$LOG_DIR/$file"

if [[ ! -f "$log_path" ]]; then
	echo "Log file not found: $log_path"
	exit 1
fi
# nawaf
first=$(head -n 1 "$log_path" | awk '{print $1}')
last=$(tail -n 1 "$log_path" | awk '{print $1}')
echo "First Entry: $first" >> "$REPORT_FILE"

echo "Analyzing $file..."
echo "Report Generated at: $(date)" >> "$REPORT_FILE"
echo "Log File: $file" >> "$REPORT_FILE"
awk '{print $2}' "$log_path" | sort | uniq -c | while read count device; do
  echo "$device: $count entries" >> "$REPORT_FILE"
done
