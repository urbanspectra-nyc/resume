#!/bin/bash

ARGS=2
E_BADARGS=99

if [ $# -ne $ARGS ] # correct number of arguments to the script;
then
  echo " "
  echo "To create a RAMDISK -> Usage: `basename $0` create SIZE_IN_MB"
  echo "To delete a RAMDISK -> Usage: `basename $0` delete DISK_ID"
  echo " "
  echo "Currently this script only supports one RAMDISK. Will update soon."
  echo "DISK_ID can be shown with 'mount'. usually /dev/sd* where * is a letter"
  echo " "
  echo " "
  exit $E_BADARGS
fi

if [ "$1" = "create" ]
then
  echo "Creating ramdisk..."
  RAMDISK_SIZE_MB=$2
  RAMDISK_SECTORS=$((2048 * $RAMDISK_SIZE_MB))
  DISK_ID=$(mount -t tmpfs -o size=$RAMDISK_SECTORS tmpfs /mnt/ramdisk)
  echo "Disk ID is :" $DISK_ID
  
fi

if [ "$1" = "delete" ]
then
  echo "Delete/unmount ramdisk $2"
  umount -f $2
fi

# This is still WIP!
# TODO: Test output of $DISK_ID
# TODO: Cleanup of script with better commands!
