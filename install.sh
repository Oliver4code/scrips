#!/bin/bash
set -e

# DankLinux repo
if ! zypper lr | grep -q "danklinux"; then
    sudo zypper addrepo -n danklinux https://download.opensuse.org/repositories/home:AvengeMedia:danklinux/16.0/home:AvengeMedia:danklinux.repo
fi

# DMS repo
if ! zypper lr | grep -q "dmsrepo"; then
    sudo zypper addrepo -n dmsrepo https://download.opensuse.org/repositories/home:/AvengeMedia:/dms/16.0/home:AvengeMedia:dms.repo
fi

sudo zypper refresh
sudo zypper install -y dms
