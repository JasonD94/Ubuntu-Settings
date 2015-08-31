#!/bin/sh

#*************************************************
#* Created by Jason Downing, December 6th, 2014
#* Rewritten August 30th, 2015
#* Last updated: Augst 31st, 2015
#* MIT Licensed - do what you want with this.
#* NOTE: I suggest reading through the entire script before running this.
#*************************************************

######################################################################
# 0. Comment out programs you don't want installed (note -y argument - DOES NOT PROMPT for approval)
# 1. Mark this script as excutable (chmod +x install.sh)
# 2. Open terminal, type ./install.sh
# 3. ???
# 4. Stuff is automagically installed! WOO HOO!
######################################################################

# Add a few repos for stuff.
#sudo apt-add-repository ppa:danielrichter2007/grub-customizer
sudo apt-add-repository ppa:webupd8team/sublime-text-3

# This is for Chrome - it may not work, in which case just install "chromimum-browser"
#wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
#sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'

# Update the repositories
sudo apt-get -y update

# Get python stuff.
sudo apt-get -y install python python-gtk2 python-xlib python-dbus python-wnck git

#****************************************************************
#  Razer Death Adder Config stuff (Only the command line works)
#  Only uncomment if you use a Razer mouse.
#****************************************************************
#sudo apt-get -y install python3 libusb-1.0.0-dev python-pyside cmake

# Update Locale so underscores show up first
sudo update-locale LC_COLLATE=C

# Screensaver for Xubuntu - may still work in Ubuntu? Needs testing.
# sudo apt-get -y install xscreensaver xscreensaver-gl-extra xscreensaver-data-extra

# Get Sublime / VLC
sudo apt-get -y install sublime-text-installer vlc

# Chrome - if the above "wget" line didn't work this may fail.
#sudo apt-get -y install google-chrome-stable

# If you instead want the open source version of Chrome, Chromium, use this.
# (uncomment the "install chromium-browser" line)
# It also does not require adding a repository, since it is in the default repository
sudo apt-get -y install chromium-browser

# Programming stuff
sudo apt-get -y install g++ openjdk-6-jdk gedit curl geany

# System monitors - useful stuff for figuring out system performance.
sudo apt-get -y install nmon glances htop

# Sensor related stuff - check on CPU/GPU/HDD temps, as well as HDD performance (Gsmart)
sudo apt-get -y install psensor lm-sensors hddtemp gsmartcontrol

# Wine - run Windows apps in Linux.
#sudo apt-get -y install wine

# GRUB / Partion stuff (probably not needed in a VM)
#sudo apt-get -y install grub-customizer gparted unetbootin 

# File transfer stuff
sudo apt-get -y install filezilla rsync 

#  The fun stuff.
#sudo apt-get -y install steam gimp neverball teg pychess

# Screenshot stuff / "sl"
sudo apt-get -y install shutter pinta sl

# Security
sudo apt-get -y install keepassx nmap wireshark 

# Virtualbox, for running Windows / Mac OS X / whatever
#sudo apt-get -y install virtualbox

# Office - note, this comes preinstalled in Ubuntu 14.04LTS, so uncomment if using a different distro that doesn't provide LibreOffice
#sudo apt-get -y install libreoffice

# anything else you want can be added below by following the synax of:
# sudo apt-get -y install PROGRAM_NAMES_HERE 
# add any required repositories to the top of this script though!
# Also, to not include certain programs, remove them, or to remove an entire line
# just comment it out by placing a "#" (pound sign / hashtag) in front of the line.
