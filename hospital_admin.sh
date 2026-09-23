#!/bin/bash

# Group 13 - Hospital Admin System
# /coding-lab_Group13/hospital_admin.sh

# Member 2 - Security Lead - YOUR PART
secure_data() {
  LOG_DIR="active_logs"

  mkdir -p "$LOG_DIR"
  touch "$LOG_DIR"/log1.txt "$LOG_DIR"/log2.txt 2>/dev/null

  echo "[Security] Securing $LOG_DIR - only owner can read & write..."

  # 700 = drwx------ owner can read, write, enter - others have nothing
  chmod 700 "$LOG_DIR"
  # 600 = -rw------- owner can read & write only
  chmod 600 "$LOG_DIR"/*

  echo "[Security] Done. New permissions:"
  ls -ld "$LOG_DIR"
  ls -l "$LOG_DIR"
}

# Placeholders for other members so script runs
setup() {
  mkdir -p active_logs
  echo "Setup done"
}

# Main
echo "=== Hospital Admin Vault ==="
setup
secure_data
