#!/bin/sh
echo "Running update and upgrade..."
apt-get update
apt-get upgrade -y
echo "Installing Git..."
apt-get install git -y
echo "Cloning lafrite-kernel"
git clone https://github.com/naugul/lafrite-kernel
echo "Change directories and running update script"
cd lafrite-kernel
./KernelUpdate.sh
