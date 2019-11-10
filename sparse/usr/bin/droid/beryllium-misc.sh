#!/bin/env bash
# A miscellaneous preparation script to run on device startup.

# We're done here if this isn't the first boot
[ ! -f /var/tmp/make-droid-links ] && exit 0

# Android Storage linking
rm -f /home/nemo/android_storage
ln -s /data/media/0 /home/nemo/android_storage

# Misc first boot stuff
chown -R nemo: /home/nemo/
gpasswd -a nemo systemd-journal

# Done
rm /var/tmp/make-droid-links