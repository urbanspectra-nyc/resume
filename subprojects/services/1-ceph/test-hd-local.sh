#!/bin/bash

# Here we quantify storage bandwidth of local physical busses and hard drives.
# Quantifies DEDICATED LOCAL PHYSICAL STORAGE DEVICE BANDWIDTH.

# author: jjdonson@gmail.com

# ** ONLY FOR HARDWARE BENCHMARKING **
# ** ALWAYS ** Gather system information first using facter.
# ** ALWAYS ** Reboot and test target disk as current and stable.
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


# STORAGE BUS TESTED
BUS[0]=usb

# Executable Tools Required - Recommended + Supported Versions.
BINS[0]=bash; BINS_V_MIN[0]='3.2'; BINS_V_MAX[0]='4.4.5'; BINS_V_OPT[0]=${BINS_V_MIN[0]};
BINS[1]=git; BINS_V_MIN[1]='1.7.4'; BINS_V_MAX[1]='2.11'; BINS_V_OPT[1]=${BINS_V_MAX[1]} # Use config --simple.
BINS[2]=curl
BINS[3]=man
BINS[4]=dd
BINS[5]=gzip
BINS[6]=gunzip
BINS[7]=sysbench
BINS[8]=facter
BINS[9]=http_load

BASH_V=$( ${BINS[0]} --version )     || ERR_MSSG=${BINS_V_OPT[0]}
GIT_V=$( ${BINS[1]} --version )      || ERR_MSSG=${BINS_V_OPT[1]}

ENV=$( env )                         || ERR_MSSG='env'
FACTS=$( facter )                    || ERR_MSSG='facter'

# Physical Storage Devices
STORAGE_DEVICE[0]=apple-ssd
STORAGE_DEVICE[1]=sandisk-thumb
STORAGE_DEVICE[2]=kingston-thumb
STORAGE_DEVICE[3]=sandisk-mini
STORAGE_DEVICE[4]=ramdisk

# Create default urbanspectra project directory structure:
mkdir -p ~/projects/urbanspectra/{public,private}/bench/{storage,systems,nets}/{input,output}/
STORAGE_TEST_DIR='~/projects/urbanspectra/private/bench/storage/'
cd $STORAGE_TEST_DIR

# Duplicate file in place on boot disk.
TEST_01=

exit 0
# exit 1

SECONDS=0
dd 
=${SECONDS}


time cp 
time rm 
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