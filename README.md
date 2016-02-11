# Ubuntu-Settings
This Repository contains some config / install scripts for setting up
Ubuntu 14.04 LTS the way I like it.

You can run the main driver script by git cloning the repository to a location
in Ubuntu, cd'ing into the root of the Repo and running the following command:

'''
sh ./auto_install.sh
'''

It will prompt for your password, and then set stuff up.

##WARNINGS
This will set stuff up the way I like it. You may hate it, or like it, or want
to change things.

I recommend git cloning and browsing through the three scripts:

- auto_install.sh    -> this is calls the two other scripts.
- desktop_install.sh -> this mass installs a ton of programs. Read through the
script to see which ones get installed.
- configure.sh       -> This copies over some defaults / configs I like for Sublime,
Shutter, default apps, etc.

Feel free to fork this, change stuff, do whatever. It's MIT licensed so just
don't sue me if it breaks your OS or whatever.
