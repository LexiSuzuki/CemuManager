#!/bin/sh
#updated 10/13/23
#This will first check for any updates and then apply them if needed
echo "Checkign for updates"
cd ..
git clone --recursive https://github.com/LexiSuzuki/CemuManager.git
echo Update complete
cd CemuManager
clear
sh ./OS-Type.sh
#This will bring up a prompt to choose between MacOS and Linux
echo "------Please choose and OS------"
PS3='------->'
options=("MacOS" "Linux Based")
select menu in "${options[@]}"; do
    case $menu in
    
    #for choosing MacOS
        "MacOS")
            softwareupdate --install-rosetta
            arch -x86_64 zsh ./MacOS-Start.sh
        clear
    exit
    ;;
    
    #for choosing Linux Based
        "Linux Based")
            ./Linux-Start.sh
    ;;
    
esac
done
;;
