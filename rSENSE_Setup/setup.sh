#!/bin/sh

#*******************************************************************************
#		Created by Jason Downing, 10/24/2015 2PM
#		MIT Licensed - do whatever you want with this.
#*******************************************************************************

# Update system
sudo apt-get update
sudo apt-get upgrade

# Git clone fork
cd ~/Code
git clone git@github.com:JasonD94/rSENSE.git # Replace with your fork's URL

# Add remote
cd ~/Code/rSENSE
git remote add remote git@github.com:isenseDev/rSENSE.git

# Install RPM & add to path. If this doesn't work, go here: https://rvm.io/
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
\curl -sSL https://get.rvm.io | bash -s stable
source ~/.rvm/scripts/rvm
rvm requirements
rvm install 2.1.0

# Apache / Postgres
sudo apt-get install apache2 apache2-dev postgresql postgresql-client libpq-dev pwgen

# Install essential stuff
sudo apt-get install 	vim git build-essential libcurl4-openssl-dev apache2-mpm-prefork \
											apache2-prefork-dev libapr1-dev libaprutil1-dev

# Install other iSENSE stuff
sudo apt-get install imagemagick zip

# Setup iSENSE
cd ~/Code/rSENSE
bundle install
rake db:create
rake db:schema:load
bundle exec rake assets:precompile

# Restart apache
sudo service apache2 restart

# Make sure to add the reCaptcha keys in ~/.recaptcha_key
# that's your home directory (~/), not the rSENSE folder!
# Replace the two lines with the key / secret

# Run rails server and see if it works. Should be at http://localhost:3000/
rails server