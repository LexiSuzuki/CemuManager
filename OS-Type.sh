#!/bin/sh
#This will first check for any updates and then apply them if needed
echo "Checkign for updates"

#todo / add updater

#This will bring up a prompt to choose between MacOS and Linux
echo "------Please choose and OS------"
PS3='------->'
options=("MacOS" "Linux Based")
select menu in "${options[@]}"; do
    case $menu in
    
    #for choosing MacOS
        "MacOS")
            sh ./MacOS-Start.sh
    ;;
    
    #for choosing Linux Based
        "Linux Based")
            ./Linux-Start.sh
    ;;
    
esac
done
;;
    
