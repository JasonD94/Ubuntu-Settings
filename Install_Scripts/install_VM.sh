#!/bin/sh

#*************************************************
#* Created by Jason Downing, December 6th, 2014
#* Rewritten August 30th, 2015
#* Last updated: Augst 31st, 2015
#* MIT Licensed - do what you want with this.
#* NOTE: I suggest reading through the entire script before running this.
#*************************************************

######################################################################
# 0. Comment out programs you don't want installed 
# (note -y argument - DOES NOT PROMPT for approval)
# 1. Run the script - sudo sh install_VM.sh
# 2. Enter sudo password
# 3. ???
# 4. Stuff is automagically installed! WOO HOO!
######################################################################

# VM edition - some stuff is commented out. Uncomment whatever you personally
# need. Or use the desktop version for everything listed.

# Add a few repos for stuff.
#sudo apt-add-repository ppa:danielrichter2007/grub-customizer
sudo apt-add-repository ppa:webupd8team/sublime-text-3

# This is for Chrome - it may not work (at least in Ubuntu 14.04 LTS in my experience)
# in which case just install "chromimum-browser" or, manually install chrome
# from Google
#wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
#sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'

# Update the repositories
sudo apt-get -y update

# Update Locale so underscores show up first
sudo update-locale LC_COLLATE=C

# Chrome - if the above "wget" line didn't work this may fail.
# Make sure to uncomment that line as well!
#sudo apt-get -y install google-chrome-stable

# If you instead want the open source version of Chrome, Chromium, use this.
# (uncomment the "install chromium-browser" line)
# It also does not require adding a repository, since it is in the default repository
sudo apt-get -y install chromium-browser

# Get python stuff.
sudo apt-get -y install python python-gtk2 python-xlib python-dbus python-wnck

# Development stuff
sudo apt-get -y install git gedit g++ openjdk-6-jdk sublime-text-installer curl geany

# System monitors - useful stuff for figuring out system performance.
sudo apt-get -y install nmon glances htop

# Sensor related stuff - check on CPU/GPU/HDD temps, as well as HDD performance (Gsmart)
#sudo apt-get -y install psensor lm-sensors hddtemp gsmartcontrol

# Virtualbox, for running Windows / Mac OS X / whatever
#sudo apt-get -y install virtualbox

# Wine - run Windows apps in Linux.
#sudo apt-get -y install wine

# GRUB / Partion stuff (probably not needed in a VM)
#sudo apt-get -y install grub-customizer gparted unetbootin 

# File transfer stuff
sudo apt-get -y install filezilla rsync 

#  The fun stuff.
#sudo apt-get -y install steam gimp neverball teg pychess

# Multimedia stuff / "sl"
sudo apt-get -y install vlc shutter pinta sl fortune-mod

# Security stuff
sudo apt-get -y install keepassx nmap wireshark 

# Office - note, this comes preinstalled in Ubuntu 14.04LTS, 
# so uncomment if using a different distro that doesn't provide LibreOffice
#sudo apt-get -y install libreoffice

# Screensaver for Xubuntu - may still work in Ubuntu? Needs testing.
# sudo apt-get -y install xscreensaver xscreensaver-gl-extra xscreensaver-data-extra

# *************************************************************************
# anything else you want can be added below by following the synax of:
# sudo apt-get -y install PROGRAM_NAMES_HERE 
#
# add any required repositories to the top of this script though!
#
# Also, to not include certain programs, remove them, or to remove an entire line
# just comment it out by placing a "#" (pound sign / hashtag) in front of the line.
# *************************************************************************
