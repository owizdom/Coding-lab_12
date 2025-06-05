#!/bin/bash

LOG_DIR="hospital_data/active_logs"
ARCHIVE_BASE="hospital_data/archived_logs"

echo "Select log to archive:"
echo "1) Heart Rate"
echo "2) Temperature"
echo "3) Water Usage"
read -p "Enter choice (1-3): " choice

file="water_usage.log"
    archive_dir="$ARCHIVE_BASE/water_data_archive"
    ;;
  *)
    echo "Invalid choice"
    exit 1
    ;;
esac
src="$LOG_DIR/$file"
archive_name="${file%.*}_$timestamp.log"

if [[ ! -f "$src" ]]; then
  echo "Log file not found: $src"
  exit 1
fi

