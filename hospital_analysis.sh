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
    echo "== Scanning vitals for CRITICAL readings =="
    mkdir -p "$REPORTS_DIR"
    : > "$ALERTS_FILE"

    {
        echo "Timestamp,Device_ID,Value"

    if [ -f "$HEART_RATE_LOG" ]; then
        grep "CRITICAL" "$HEART_RATE_LOG" | awk -F"$FIELD_SEP" '{ print $1","$2","$3 }'
    fi
    if [ -f "$TEMPERATURE_LOG" ]; then
        grep "CRITICAL" "$TEMPERATURE_LOG" | awk -F"$FIELD_SEP" '{ print $1","$2","$3 }'
    fi
    } >> "$ALERTS_FILE"

    echo "Saved to $ALERTS_FILE"
}

water_audit() {
	echo "water_audit: TODO (M6)"
}

main() {
    process_vitals
    water_audit
}

main

