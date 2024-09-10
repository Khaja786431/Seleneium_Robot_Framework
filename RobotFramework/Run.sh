#!/bin/bash

# Get the current date and time in YYYYMMDD_HHMMSS format
TIMESTAMP=$(date +"%Y_%m_%d_%H_%M_%S")

# Define the reports directory and create it
REPORTS_DIR="Reports/report_${TIMESTAMP}"
mkdir -p "${REPORTS_DIR}"

# Run the Robot Framework tests and save reports in the timestamped folder
robot --outputdir "${REPORTS_DIR}" TestCases/
