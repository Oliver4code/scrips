#!/bin/bash
set -e

# Add DankLinux repo if not exists
if ! zypper lr | grep -q "home:AvengeMedia:danklinux"; then
    sudo zypper addrepo https://download.opensuse.org/repositories/home:AvengeMedia:danklinux/16.0/home:AvengeMedia:danklinux.repo
fi

# Add DMS repo if not exists
if ! zypper lr | grep -q "home:AvengeMedia:dms"; then
    sudo zypper addrepo https://download.opensuse.org/repositories/home:/AvengeMedia:/dms/16.0/home:AvengeMedia:dms.repo
fi

sudo zypper refresh
sudo zypper install -y dms
