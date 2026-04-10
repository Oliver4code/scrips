#!/bin/bash
set -e

sudo zypper addrepo -f https://download.opensuse.org/repositories/home:AvengeMedia:danklinux/openSUSE_Tumbleweed/home:AvengeMedia:danklinux.repo
sudo zypper addrepo -f https://download.opensuse.org/repositories/home:/AvengeMedia:/dms/openSUSE_Tumbleweed/home:AvengeMedia:dms.repo
sudo zypper refresh
sudo zypper install -y dms
