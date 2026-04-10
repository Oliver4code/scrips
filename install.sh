#!/bin/bash
set -e

sudo zypper addrepo -f https://download.opensuse.org/repositories/home:AvengeMedia:danklinux/16.0/home:AvengeMedia:danklinux.repo
sudo zypper addrepo -f https://download.opensuse.org/repositories/home:/AvengeMedia:/dms/16.0/home:AvengeMedia:dms.repo

sudo zypper refresh
sudo zypper install -y dms
