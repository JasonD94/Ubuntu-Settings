#!/bin/sh

#*******************************************************************************
#*  Created by Jason Downing, February 11th, 2016
#*  Last updated: February 11th, 2016
#*  MIT Licensed - do what you want with this.
#*  NOTE: I suggest reading through the entire script before running this.
#*******************************************************************************

################################################################################
#	  This script will auto configure and install a bunch of stuff.
#   Look through the rest of the GitHub repo to see what it does. It mostly
#   installs & configures things to my liking.
#   You may want to change the scripts (fork the Repo). Or, run it, reboot,
#   and test it out. If you like it, sweet! If not, change stuff or make an
#   issue and I'll tweak the scripts.
################################################################################

# Step 1: Run the install script.
# I default to desktop.sh, but you may want to try the VM script for VMs or
# lightweight computers (e.g. VMs, Chromebooks, Netbooks, 2 in 1s, etc.)
echo 'Running the install script...'
sh ./Install_Scripts/install_desktop.sh

##############################################
# TODO:
# 1) Add some stuff to copy configs over.
# 2) Make sublime the default text editor
# 3) Make Chrome the default browser
# 4) Some other stuff.
#
###############################################

