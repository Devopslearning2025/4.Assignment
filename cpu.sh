#!/bin/bash

#to get the top 5 cpus
cpu=$(ps -eo pid.ppid,cmd,%mem,%cpu --sort=%cpu|head -6)

echo "cpu"

echo "PID PPID CMD %CPU"

