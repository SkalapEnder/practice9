#!/bin/bash
grep -E '^[a-zA-Z]' /etc/service | awk '{print $1}' | sort | uniq > ~/uniqueservices.txt && wc -l ~/uniqueservices.txt
