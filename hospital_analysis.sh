#!/bin/bash
#hospital_analysis.sh - Live data analysis before archiving
#M5 (Edlawit - clinical analyist)
#M6 (LIam - Facility auditor)

ACTIVE_DIR="active_logs"
REPORTS_DIR="reports"

HEART_RATE_LOG="$ACTIVE_DIR/heart_rate_log.log"
TEMPERATURE_LOG="$ACTIVE_DIR/temperature_log.log"
WATER_LOG="$ACTIVE_DIR/water_usage_log.log"
ALERTS_FILE="$REPORTS_DIR/critical_alerts.txt"
FIELD_SEP=' \| '

process_vitals() {
    echo "process_vitals: TODO (M5)"
}

water_audit() {
    echo "water_audit: TODO (M6)"
}

main() {
    process_vitals
    water_audit
}

main

