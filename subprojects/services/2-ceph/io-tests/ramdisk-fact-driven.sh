#!/bin/bash

ARGS=2
E_BADARGS=99
# STARTSTAMP=$(date ??)

# Reboot to set OS RAM baseline.
echo 'System Reboot Required'
# confirm/deny

# Count procs running.
SYS_PROC_COUNT=$( ps uawx | wc -l )
# echo TSTAMP >> /etc/boot
SYS_PROC_COUNT_BASELINE=$( ps uawx | wc -l )

# Safe mode

# What operating system are we running on?
KERNEL=$(facter | grep 'kernel ' | awk '{print $3}')
UNAME=$(uname -a)

# Total Physical Memory
RAM_MB=$(free)

# Total Physical Memory Used By Baselined OS

# Total Physical Memory Available

# Total Free MB On Boot Disk
BOOT_FREE_MB=$(df -h | grep '/dev/disk1' | awk '{print $7}' )

# Configure disk count, types, tests.
# Preflight configs.
# 

