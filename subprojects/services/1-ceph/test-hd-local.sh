#!/bin/bash

# Here we quantify storage bandwidth of local physical busses and hard drives.
# Quantifies DEDICATED LOCAL PHYSICAL STORAGE DEVICE BANDWIDTH.

# author: jjdonson@gmail.com

# ** ONLY FOR HARDWARE BENCHMARKING **
# ** ALWAYS ** Gather system information first using facter.
# ** ALWAYS ** Reboot and test target disk as current and stable.
# ** ALWAYS ** Verify performance statistics by way of manual spot-checking.

# ** ONLY FOR HARDWARE BENCHMARKING **

# Save login name in bash variable.  Disable timeouts.
WHOWASI=$( whoami )
TMOUT=0
# time sudo updatedb ??

# system specs
SYSTEM[0]='mbook-air'
BOOT_DEVICE[0]='hermes'
BOOT_DEV_GB[0]='120'
BOOT_DEV_EMPTY_GB[0]='8'
BOOT_DEV_TYPE[0]='ssd'
BOOT_DEV_FSYS_V[0]='10.11.6'
CPU_INFO=$( cat /proc/cpu )

# Physical Storage Devices
STORAGE_DEVICE[0]='apple-ssd-boot'; VOL_PATH[0]=''
STORAGE_DEVICE[1]='sandisk-ssd-thumb'; VOL_PATH[1]=''
STORAGE_DEVICE[2]='kingston-ssd-thumb'; VOL_PATH[2]=''
STORAGE_DEVICE[3]='sandisk-ssd-micro'; VOL_PATH[3]=''
STORAGE_DEVICE[4]='ramdisk'; VOL_PATH[4]=''

# STORAGE BUS TESTED
BUS[0]=sata
BUS[1]=usb
BUS[2]=usb
BUS[3]=usb
BUS[4]=ram # Boot config instructions for RAM DISK at bottom of script.

# Create default urbanspectra project directory structure:
mkdir -p ~/projects/urbanspectra/{public,private}/bench/{storage,systems,nets}/{input,output}/
cd ~/projects/urbanspectra/private/bench/storage/

# ENV=$( env )                         || ERR_MSSG='env'
# FACTS=$( facter )                    || ERR_MSSG='facter'
# RAM_FREE=$( free )
# DISK_FREE=$( df -l )
# PROC_TREE=$( sudo ps uawx )
# OPEN_FILES=$( lsof )

# The dd utility exits 0 on success, and >0 if an error occurs: fail-first...
dd /etc/fail-first

# TEST_RUN_NUM=$((${TEST_RUN_NUM} + 1))
# SECONDS=0
    ##  DO SOMETHING HERE
# DURATION=${SECONDS}
# return ${DURATION}
# echo ${DURATION}
# log ${DURATION}

# Duplicate file in place on boot disk.
cp ${TEST_DATA_FILE} ${TEST_DATA_FILE}-tmp
rm ${TEST_DATA_FILE}-tmp

# use sysbench to test cpu 64 bit only
sysbench --test=cpu --cpu-max-prime=20000 run

# Prepare for io tests by using sysbench to generate test files.
sysbench --test=fileio --file-total-size=512M prepare
# ** Generate more data than will fit in memory. **
# ** Ensure that we do not fill up boot disk. **

# test modes: seqwr seqrewr seqrd rndrd rndwr rndrw
sysbench --test=fileio --file-total-size=512M --file-test-mode=rndrw

exit 0
# exit 1

# All of this must be set up to run standalone from a bootable thumb drive.
# Executable Tools Required - Recommended + Supported Versions.
BINS[0]=bash; BINS_V_MIN[0]='3.2'; BINS_V_MAX[0]='4.4.5'; BINS_V_OPT[0]=${BINS_V_MIN[0]};
BINS[1]=git; BINS_V_MIN[1]='1.7.4'; BINS_V_MAX[1]='2.11'; BINS_V_OPT[1]=${BINS_V_MAX[1]} # Use config --simple.
BINS[2]=curl; BINS[3]=man; BINS[4]=dd ; BINS[5]=gzip; BINS[6]=gunzip; BINS[7]=sysbench; BINS[8]=facter; BINS[9]=http_load
BASH_V=$( ${BINS[0]} --version )     || ERR_MSSG=${BINS_V_OPT[0]}
GIT_V=$( ${BINS[1]} --version )      || ERR_MSSG=${BINS_V_OPT[1]}


# OSX RAM DISK 128MB: $ diskutil erasevolume HFS+ 'RAM Disk' `hdiutil attach -nomount ram://262144`

# umount -f RAM\ Disk


---
real    0m2.308s
user    0m0.003s
sys     0m0.383s
---
real    0m1.259s
user    0m0.003s
sys     0m0.286s
---
real    0m1.333s
user    0m0.003s
sys     0m0.297s
---
real    0m1.212s
user    0m0.003s
sys     0m0.307s
---
real    0m1.340s
user    0m0.003s
sys     0m0.317s
---
real    0m0.116s
user    0m0.002s
sys     0m0.015s
---
real    0m1.427s
user    0m0.003s
sys     0m0.294s
---
real    0m1.194s
user    0m0.003s
sys     0m0.291s
---
real    0m0.005s
user    0m0.001s
sys     0m0.002s
---
real    0m1.235s
user    0m0.003s
sys     0m0.296s
---
real    0m1.888s
user    0m0.003s
sys     0m0.297s
---
real    0m1.128s
user    0m0.003s
sys     0m0.289s
---
time cp /Users/Mac/Movies/Mac\ Video\ Library/Fundamentals\ of\ Ceph\ by\ Greg\ Farnum.mp4 /Users/Mac/Movies/Mac\ Video\ Library/Fundamentals\ of\ Ceph\ by\ Greg\ Farnum2.mp4