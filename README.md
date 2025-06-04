

# Group12 Automated Log Management System

This project is a Linux shell-based log management and analysis system developed as part of the Introduction to Linux and IT Tools course assignment. It simulates the monitoring of hospital data (heart rate, temperature, water usage) using Python scripts and provides tools to archive and analyze logs using interactive shell scripts.. It is designed to:

# Task 1: Interactive Archival Script (`archive_logs.sh`)

* Prompt the user to select a log file to archive.
* Move and rename the selected log file with a timestamp.
* Create a new, empty version of the original log file.
* Organize archived logs into categorized subdirectories.

---

## 🛠️ File Structure

```
hospital_data/
├── active_logs/
│   ├── heart_rate.log
│   ├── temperature.log
│   └── water_usage.log
└── archived_logs/
    ├── heart_data_archive/
    ├── temperature_data_archive/
    └── water_usage_data_archive/
```

---

## Features

* Interactive selection of which log to archive.
* Timestamped archive file names (e.g., `heart_rate_log-20250605-143015.log`).
* Original log file is replaced with a new, empty file (preserves file path for other systems).
* Directory structure is created automatically if it doesn’t exist.

---

## How to Use

1. Ensure the script is executable:

   ```bash
   chmod +x archive_logs.sh
   ```

2. Run the script:

   ```bash
   ./archive_logs.sh
   ```

3. Follow the on-screen menu:

   ```
   Choose log file to archive:
   1) heart_rate.log
   2) temperature.log
   3) water_usage.log
   ```

---

## What Happens During Archiving?

If you select `heart_rate.log`, the script will:

* Move `hospital_data/active_logs/heart_rate.log` to
  `hospital_data/archived_logs/heart_data_archive/heart_rate-YYYYMMDD-HHMMSS.log`

* Then, it creates a **new empty** `heart_rate.log` back in the `active_logs` directory.

---

## ✅ Example Output

```text
WELCOME TO GROUP12 AUTOMATED LOG MANAGEMENT SYSTEM

Choose log file to archive:
1) heart_rate.log
2) temperature.log
3) water_usage.log
Enter the number of your choice [1-3]: 1

    Archiving 'heart_rate.log'...

Successfully Archived 'heart_rate.log' to 'hospital_data/archived_logs/heart_data_archive/heart_rate-20250605-153000.log'
```

---

# Task 2: Intelligent Analysis Script (`analyze_logs.sh`)

This script allows users to analyze log files related to heart rate, temperature, and water usage in an interactive and structured way.

Upon running, the user is prompted with:

```bash
Select log file to analyze:
1) Heart Rate (heart_rate.log)
2) Temperature (temperature.log)
3) Water Usage (water_usage.log)
Enter choice (1-3):
```

A `case` statement handles the user input. If an invalid number is entered, an error message is displayed and the script exits.

```bash
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
```

---

## `analyze_heart_rate`

Checks if `heart_rate.log` exists. If not, exits and prompts user to fix the issue. If valid:

1. Counts number of heart rate monitors.
2. Shows frequency of each monitor.
3. Logs the first and last timestamps.
4. Appends results to `reports/analysis_report.txt`.

---

## `analyze_temperature`

Validates existence of `temperature.log`. Then:

1. Counts temperature monitors.
2. Shows usage frequency.
3. Finds first and last timestamp.
4. Appends results to the report.

---

## `analyze_water_usage`

Performs similar actions on `water_usage.log`:

* Checks file presence.
* Identifies unique devices.
* Counts occurrences per device.
* Logs timestamps of first and last use.
* Appends results to the report file.

This helps monitor water consumption patterns and detect anomalies.

---

## 👥 This Project was developed by these active Group 12 Contributors:

| Name                           | Role Description                                         |
| ------------------------------ | -------------------------------------------------------- |
| **Okechukwu Wisdom Ikechukwu** | Team Lead – Coordinated the team and scripted bash logic |
| **Cyuzuzo Germain**            | Assistant Team Lead – Debugging and support              |
| **Bonheur Divin MUNEZERO**     | Developer – Wrote Analyze and Archive scripts            |
| **Fabrice Mbarushimana**       | Developer – Wrote Analyze and Archive scripts            |
| **Nawaf Awadallah Ahmed**      | Developer – Wrote Analyze and Archive scripts            |
| **Nsenga Willy**               | Technical Writer – Documented and explained the system   |
| **Alexis-Gerald Olunna Okwa**  | Inactive – Absent after multiple contact attempts        |

---
