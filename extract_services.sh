#!/bin/bash
OUTPUT_DIR="$HOME/linux_services_output"
mkdir -p $OUTPUT_DIR
grep -E '^[a-zA-Z]' /etc/services | awk '{print $1}' | sort | uniq > $OUTPUT_DIR/uniqueservices.txt && wc -l $OUTPUT_DIR/uniqueservices.txt
