#bin/bash

awk '/MemTotal/ {print $2}' /proc/meminfo
