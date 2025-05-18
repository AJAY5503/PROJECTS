#!/bin/bash

#simple monitor of system!

echo "========================================================"
echo "basic helath check  -$(date) "
echo "========================================================"
echo -e "\n load average: "
echo -e "\n $(uptime) "
echo -e "\n free memory:"
echo -e "\n $(free -h | awk 'NR==2 {print $4}')    "
echo -e "\n free storage :"
df -h | awk 'NR==15 || NR==16'

