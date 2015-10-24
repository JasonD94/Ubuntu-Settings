#!/bin/bash
#*****************************************************************************
#  Backup to external hard drive on laptop running Ubuntu 14.04 LTS
#*****************************************************************************

# Backups up home folder (~/) to external drive. Change destination path to your HDD.
rsync -avhh ~/ /media/asus/SS\ 160GB/rsync_laptop