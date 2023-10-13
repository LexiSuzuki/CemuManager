#!/bin/sh
echo "Generating requierd files"
cd ~/
mkdir CemuManager
cd CemuManager
touch mlc.cfg
touch cemu.cgf
echo "/dumy/mlc/location" > mlc.cfg
echo "/dummy/cemu/location" > cemu.cgf
cd ~/Downloads/CemuManager-main
cp CemuManager.sh ~/CemuManager
echo "starting"
sleep 2
sh ./CemuManager.sh
exit

