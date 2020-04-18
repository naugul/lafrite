#!/bin/sh
echo "Running update and upgrade..."
apt-get update
apt-get upgrade -y
echo "Upgrade finished, replacing platform.dtb..."
cp ./meson-gxl-s805x-libretech-ac.dtb /boot/efi/dtb/libre-computer/aml-s805x-ac/platform.dtb
echo "Installing Headers..."
dpkg -i linux-headers-5.7.0-rc1_5.7.0-rc1-1_arm64.deb
echo "Installing Image..."
dpkg -i linux-image-5.7.0-rc1_5.7.0-rc1-1_arm64.deb
echo "Installing libc..."
dpkg -i linux-libc-dev_5.7.0-rc1-1_arm64.deb
echo "Restarting system..."
shutdown -r now
