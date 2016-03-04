#!/usr/bin/env bash

# carefull, should be root to use it

## the package name is the same for:
#     * Fedora
#     * Gentoo
#     * Debian
#     * Void Linux
#     * ALT Linux
#     * Frugalware Linux
#     * Arch Linux
#     * Source Mage GNU/Linux
#     * ROSA Linux
PACKAGE_NAME=inotify-tools


## right now, I only include the system I use most of the time (Debian/Ubuntu and CentOS/Fedora
if [ -n "$(command -v dnf)" ]; then
    dnf install -y $PACKAGE_NAME
elif [ -n "$(command -v apt-get)" ]; then
    apt-get install $PACKAGE_NAME
fi

rm -f /usr/local/bin/inotifyrun
chmod +x inotifyrun.sh
cp inotifyrun.py /usr/local/bin/inotifyrun