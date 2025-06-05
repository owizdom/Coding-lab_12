#!/bin/bash

LOG_DIR="hospital_data/active_logs"
ARCHIVE_BASE="hospital_data/archived_logs"

echo "Select log to archive:"
echo "1) Heart Rate"
echo "2) Temperature"
echo "3) Water Usage"
read -p "Enter choice (1-3): " choice
