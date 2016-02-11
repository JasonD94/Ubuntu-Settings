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

# Step 0: I'm assuming I haven't done ANYTHING with this OS yet, so let's
# update, upgrade and dist-upgrade to get stuff up and running.
echo 'THIS SCRIPT WILL UPDATE, UPGRADE AND DIST-UPGRADE THE SYSTEM.'
echo 'IT WILL THEN INSTALL A TON OF PROGRAMS AND CONFIGURE STUFF.'
echo 'Enter your sudo password and let the script do its magic.'
echo 'If you DO NOT want to run this script anymore, hit CTR+C right now.'
sudo apt-get -y update && sudo apt-get -y upgrade && sudo apt-get -y dist-upgrade

# Step 1: Run the install script.
# I default to desktop.sh, but you may want to try the VM script for VMs or
# lightweight computers (e.g. VMs, Chromebooks, Netbooks, 2 in 1s, etc.)
echo 'Running the install script...'
sh ./Install_Scripts/install_desktop.sh

# Step 2: Setup the defaults / configs that work best.
# This makes getting up and running so easy.
echo 'Running the Configure script...'
sh ./Configure/configure.sh

# Anything else needed?
# TODO: determine other stuff to do.
