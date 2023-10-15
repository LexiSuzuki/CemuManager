#!/bin/sh
#updated 10/13/23
#This will first check for any updates and then apply them if needed
clear
echo "Checkign for updates"
cd ..
echo "On MacOS just type y 3 times if you get any popups in the ternimal"
rm -R CemuManager
git clone --recursive https://github.com/LexiSuzuki/CemuManager.git
echo Update complete
cd CemuManager
clear
#echo "it is recromended to rerun the script to ensure your on the latest version"
#This will bring up a prompt to choose between MacOS and Linux
echo "------Please choose and OS------"
PS3='------->'
options=("MacOS" "Linux Based")
select menu in "${options[@]}"; do
    case $menu in
    
    #for choosing MacOS
        "MacOS")
            cd CemuManager-Data
            softwareupdate --install-rosetta
            arch -x86_64 zsh ./CemuManager.sh
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
