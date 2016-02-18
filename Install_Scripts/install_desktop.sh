#!/bin/sh

#*******************************************************************************
#* Created by Jason Downing, December 6th, 2014
#* Last updated: February 11th, 2016
#* MIT Licensed - do what you want with this.
#* NOTE: I suggest reading through the entire script before running this.
#*******************************************************************************

######################################################################
# 0. Comment out programs you don't want installed
# (note -y argument - DOES NOT PROMPT for approval)
# 1. Run the script - sudo sh install_desktop.sh
# 2. Enter sudo password
# 3. ???
# 4. Stuff is automagically installed! WOO HOO!
######################################################################

# WARNING - THESE REPOSITORIES WILL AUTO ADD WITH THE -Y.
# GOOGLE STUFF IF YOU ARE CONCERNED.
# Source for the "-y" command:
# https://askubuntu.com/questions/304178/how-do-i-add-a-ppa-in-a-shell-script-without-user-input

# Grub-customizer is awesome for changing Grub related stuff.
# Sublime is also awesome and free. Just change one line and it won't bug you. (Google that)
sudo apt-add-repository ppa:danielrichter2007/grub-customizer -y
sudo apt-add-repository ppa:webupd8team/sublime-text-3 -y

# These are Ubuntu Unity specific. Comment out if you use Xubuntu / Arch / whatever.
# Tweak tool is in the Default Repositories for 13.04 and up.
#sudo add-apt-repository ppa:freyja-dev/unity-tweak-tool-daily -y
sudo add-apt-repository ppa:tualatrix/ppa -y

# These are application indicators, which are really useful to have.
sudo add-apt-repository ppa:atareao/atareao -y
sudo add-apt-repository ppa:diesch/testing -y
sudo add-apt-repository ppa:caffeine-developers/caffeine-dev -y
sudo add-apt-repository ppa:indicator-brightness/ppa -y
sudo add-apt-repository ppa:alexmurray/indicator-sensors-daily -y
sudo add-apt-repository ppa:tsbarnes/indicator-keylock -y

# This is for Chrome - it may not work (at least in Ubuntu 14.04 LTS in my experience)
# in which case just install "chromimum-browser" or, manually install chrome
# from Google
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'

# Update the repositories
sudo apt-get -y update

# Update Locale so underscores show up first
sudo update-locale LC_COLLATE=C

# Chrome - if the above "wget" line didn't work this may fail.
# Make sure to uncomment that line as well!
sudo apt-get -y install google-chrome-stable

# If you instead want the open source version of Chrome, Chromium, use this.
# (uncomment the "install chromium-browser" line)
# It also does not require adding a repository, since it is in the default repository
sudo apt-get -y install chromium-browser

# Python stuff.
sudo apt-get -y install python python-gtk2 python-xlib python-dbus python-wnck

# Development stuff, Google things you don't recongize. All are handy.
sudo apt-get -y install git gedit g++ openjdk-6-jdk sublime-text-installer curl geany terminator

# Ubuntu Unity stuff! Don't install unless you run Ubuntu 14.04 or a version with Unity.
sudo apt-get -y install  ubuntu-tweak unity-tweak-tool

# System monitors - useful stuff for figuring out system performance.
sudo apt-get -y install nmon glances htop

# System App Indicators that show up next to the clock / battery icon.
# Some of these don't auto start until you launch them for the first time.
# I found all of these on Stackoverflow, see the following URL for a description:
# https://askubuntu.com/questions/30334/what-application-indicators-are-available
sudo apt-get -y install indicator-multiload indicator-cpufreq classicmenu-indicator
sudo apt-get -y install my-weather-indicator indicator-sensors caffeine shutter
sudo apt-get -y install indicator-brightness indicator-keylock

# Sensor related stuff - check on CPU/GPU/HDD temps, as well as HDD performance (Gsmart)
sudo apt-get -y install lm-sensors hddtemp gsmartcontrol

# Trying out indicator-sensors instead.
# sudo apt-get -y install psensor

# Virtualbox, for running Windows / Mac OS X / whatever
sudo apt-get -y install virtualbox

# Wine - run Windows apps in Linux.
sudo apt-get -y install wine

# GRUB / Partion stuff (probably not needed in a VM)
sudo apt-get -y install grub-customizer gparted unetbootin

# File transfer stuff
sudo apt-get -y install filezilla rsync

#  The fun stuff.
sudo apt-get -y install steam gimp neverball teg pychess

# Multimedia stuff / "sl"
sudo apt-get -y install vlc pinta sl fortune-mod

# Security stuff
sudo apt-get -y install keepassx nmap wireshark

# Office - note, this comes preinstalled in Ubuntu 14.04LTS,
# so uncomment if using a different distro that doesn't provide LibreOffice
#sudo apt-get -y install libreoffice

# *************************************************************************
# anything else you want can be added below by following the synax of:
# sudo apt-get -y install PROGRAM_NAMES_HERE
#
# add any required repositories to the top of this script though!
#
# Also, to not include certain programs, remove them, or to remove an entire line
# just comment it out by placing a "#" (pound sign / hashtag) in front of the line.
# *************************************************************************
