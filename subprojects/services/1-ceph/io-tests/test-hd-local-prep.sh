#!/bin/bash

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


# All of this must be set up to run standalone from a bootable thumb drive.
# Executable Tools Required - Recommended + Supported Versions.
BINS[0]=bash; BINS_V_MIN[0]='3.2'; BINS_V_MAX[0]='4.4.5'; BINS_V_OPT[0]=${BINS_V_MIN[0]};
BINS[1]=git; BINS_V_MIN[1]='1.7.4'; BINS_V_MAX[1]='2.11'; BINS_V_OPT[1]=${BINS_V_MAX[1]} # Use config --simple.
BINS[2]=curl; BINS[3]=man; BINS[4]=dd ; BINS[5]=gzip; BINS[6]=gunzip; BINS[7]=sysbench; BINS[8]=facter; BINS[9]=http_load
BASH_V=$( ${BINS[0]} --version )     || ERR_MSSG=${BINS_V_OPT[0]}
GIT_V=$( ${BINS[1]} --version )      || ERR_MSSG=${BINS_V_OPT[1]}

