#!/bin/sh

#*************************************************
#* Created by Jason Downing, December 6th, 2014
#* Rewritten August 30th, 2015
#* MIT Licensed - do what you want with this.
#*************************************************

######################################################################
# 0. Comment out programs you don't want installed (note -y argument - DOES NOT PROMPT for approval)
# 1. Mark this script as excutable (chmod +x install.sh)
# 2. Open terminal, type ./install.sh
# 3. ???
# 4. Stuff is automagically installed! WOO HOO!
######################################################################

# Add a few repos for stuff.
sudo apt-add-repository ppa:danielrichter2007/grub-customizer
sudo apt-add-repository ppa:webupd8team/sublime-text-3

# This is for Chrome - it may not work, in which case just install "chromimum-browser"
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'

# If you instead want the open source version of Chrome, Chromium, use this.
# (uncomment the "install chromium-browser" line)
# It also does not require adding a repository, since it is in the default repository
# sudo apt-get -y install chromium-browser

# Update the repositories
sudo apt-get -y update

# Get python stuff.
sudo apt-get -y install python python-gtk2 python-xlib python-dbus python-wnck git

# ****************************************************************
#  Razer Death Adder Config stuff (Only the command line works)
#  Only uncomment if you use a Razer mouse.
# ****************************************************************
#sudo apt-get -y install python3 libusb-1.0.0-dev python-pyside cmake

# Update Locale so underscores show up first
sudo update-locale LC_COLLATE=C

# Screensaver for Xubuntu - may still work in Ubuntu? Needs testing.
# sudo apt-get -y install xscreensaver xscreensaver-gl-extra xscreensaver-data-extra

# Get Sublime
sudo apt-get -y install sublime-text-installer

# Chrome - if the above "wget" line didn't work this may fail.
sudo apt-get -y install google-chrome-stable

# Programming stuff
sudo apt-get -y install g++ openjdk-6-jdk gedit curl geany

# System monitors - useful stuff for figuring out system performance.
sudo apt-get -y install nmon glances htop lm-sensors hddtemp \
psensor lm-sensors hddtemp psensor gsmartcontrol

# Wine - run Windows apps in Linux.
sudo apt-get -y install wine

# Disk related / GRUB
sudo apt-get -y install grub-customizer gparted filezilla rsync unetbootin 

#  The fun stuff.
sudo apt-get -y install steam pinta gimp vlc neverball teg pychess shutter shutter sl

# Security
sudo apt-get -y install keepassx nmap wireshark virtualbox

# Office
sudo apt-get -y install libreoffice

# anything else you want can be added below by following the synax of:
# sudo apt-get -y install PROGRAM_NAMES_HERE 
# add any required repositories to the top of this script though!
