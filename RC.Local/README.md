rc.local
=========
This file contains a quick way to disable the keyboard backlight on an
ASUS N Series laptop running Ubuntu 14.04LTS. It also forces the screen
backlight to be roughly 50% out of 100%. The display backlight portion
should work on most laptops running Intel CPU/GPUs. You may need to change
the brightness level though.

`
# Default brightness will be medium brightness now.
echo 2267 > /sys/class/backlight/intel_backlight/brightness

# Default keyboard backlight will be off.
sleep 7
echo 0 > /sys/class/leds/asus::kbd_backlight/brightness
`