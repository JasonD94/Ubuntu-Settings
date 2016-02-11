#!/bin/bash
#*******************************************************************************
#*  Created by Jason Downing, February 11th, 2016
#*  Last updated: February 11th, 2016
#*  MIT Licensed - do what you want with this.
#*  NOTE: I suggest reading through the entire script before running this.
#*******************************************************************************

################################################################################
#	This script will auto configur a bunch of stuff.
#   Look through the rest of the GitHub repo to see what it does. It mostly
#   installs & configures things to my liking.
#   You may want to change the scripts (fork the Repo). Or, run it, reboot,
#   and test it out. If you like it, sweet! If not, change stuff or make an
#   issue and I'll tweak the scripts.
################################################################################

##############################################################
#   THIS SCRIPT SHOULD BE CALLED AFTER THE INSTALL SCRIPT!   #
##############################################################

# COPY configs to right directories.
cp ../BashRC/.bashrc ~/			# Custom BashRC config.
cp ../BashRC/.bash_aliases ~/

cp -R ../Shutter_Profiles/.shutter ~/ 	# Shutter / Sublime settings
cp -R ../Sublime_Settings/.config ~/

cp -R ../Templates ~/		# Templates

cp ../.face ~/  		# Update the face icon for login screen and stuff.

# Make Sublime the default text editor.
# Chrome is also set as the default Web Browser.
sudo cp ../Default/defaults.list /usr/share/applications/

# TODO:
# Add more configs for other apps.
