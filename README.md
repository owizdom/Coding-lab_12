Hospital Data Monitoring & Archival System
This project is a Linux shell-based log management and analysis system developed as part of the Introduction to Linux and IT Tools course assignment. It simulates the monitoring of hospital data (heart rate, temperature, water usage) using Python scripts and provides tools to archive and analyze logs using interactive shell scripts.
How It Works
Simulators
Start the simulators to generate real-time logs:
python3 heart_rate_monitor.py start
python3 temperature_recorder.py start
python3 water_consumption.py start

Logs are saved to:
hospital_data/active_logs/heart_rate.log


hospital_data/active_logs/temperature.log


hospital_data/active_logs/water_usage.log


2. Archiving Logs (archive_logs.sh)
Run the script:
./archive_logs.sh

Prompts user to select a log to archive.


Moves selected log to an archive folder with a timestamped filename.


Creates a new empty log file for continued logging.


Includes error handling for invalid input or missing files.

3. Analyzing Logs (analyze_logs.sh)
Run the script:
./analyze_logs.sh

Presents an interactive menu for log selection.


Counts log entries per device.


Optionally logs first and last timestamps.


Appends analysis to reports/analysis_report.txt


Features
Interactive CLI menus


Timestamped log archival


Input validation & error handling


CLI-based data analysis (awk, grep, sort, uniq)


Organized structure for active, archived, and analyzed data


Requirements
Python 3
Bash shell
Core Linux utilities: awk, grep, sort, uniq, date, mv, touch
 Group 12 Members
Okechukwu Wisdom Ikechukwu :  Team Lead in charge of coordinating and assigning tasks to team members as well as scripting the bash scripts.
Cyuzuzo Germain :  Assistant Team Lead in charge of debugging errors the team faced while doing the assignments.
Bonheur Divin MUNEZERO : Developer who was responsible for writing the Analyze and Archive scripts.
Fabrice Mbarushimana : Developer who was responsible for writing the Analyze and Archive scripts.
Nawaf Awadallah Ahmed : Developer who was responsible for writing the Analyze and Archive scripts.
Nsenga Willy :  The Technical Writer who was responsible for writing and explaining how the application works.
Alexis-Gerald Olunna Okwa : This team member was absent after several attempts to reach out via canvas and emails.
