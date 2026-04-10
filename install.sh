#!/bin/bash
set -e

# Remove existing repos (ignore error if not exist)
sudo zypper removerepo home_AvengeMedia_danklinux || true
sudo zypper removerepo home_AvengeMedia_dms || true

# Add repos again
sudo zypper addrepo -f https://download.opensuse.org/repositories/home:AvengeMedia:danklinux/16.0/home:AvengeMedia:danklinux.repo
sudo zypper addrepo -f https://download.opensuse.org/repositories/home:/AvengeMedia:/dms/16.0/home:AvengeMedia:dms.repo

# Refresh and install
sudo zypper refresh
sudo zypper install -y dms
