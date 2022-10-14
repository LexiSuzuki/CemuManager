#!/bin/sh
clear
echo "-----Please chose an option-----"
PS3='------->'
options=("Start" "Update" "Manage mlc01 !!NOT AVALIBLE!!" "Exit")
select menu in "${options[@]}"; do
    case $menu in
    #Used for launching Cemu

        "Start")
            echo "Starting Cemu..."
            echo "Finished!!"
            echo "Following warnings are from Cemu, not this script"
    #Change this if youre cemu folder is not on home
	    cd ~/Cemu/bin
	    ./Cemu_release
            echo "----------Cemu closed----------"
	    exit
            ;;

    #Used for Updating Cemu

        "Update")
            echo "Updating..."
    #please change these paths according to where you store Cemu
	    cd ~/
	    git clone --recursive https://github.com/cemu-project/Cemu
	    cd Cemu
	    cmake -S . -B build -DCMAKE_BUILD_TYPE=release -DCMAKE_C_COMPILER=/usr/bin/clang -DCMAKE_CXX_COMPILER=/usr/bin/clang++ -G Ninja
	    cmake --build build
            echo "Finished!!"
        exit
            ;;

    #Used for managing the mlc01 folder
        "Manage mlc01 !!NOT AVALIBLE!!")
        clear
        echo "Wip"
        echo "Exiting..."
        exit
#        echo "-----Please chose an option-----"
#        PS3='------->'
#        mlc01=("Move" "Delete" "change" "exit")
#        select menu2 in "${mlc01[@]}"; do
#            case $menu2 in
#
#    #for moving the mlc01 folder
#            Move)
#                    echo "Please chose a location"
#
#
#
#                    echo "---end test---"
#                exit
#            ;;
#
#    #for Deleting the mlc01 folder
#            Delete)
#                clear
#                    echo "Are you sure you want to delet mlc01?"
#                        PS3='------->'
#                        delet=("Yes" "No")
#                        select menu3 in "${delet[@]}"; do
#                            case $menu3 in
#
#                            Yes)
#                                echo "Not implimented"
#                                echo "Exiting"
#                            exit
#                            ;;
#
#                            No)
#                                echo "Canceling..."
#                                echo "exiting..."
#                            exit
#                            ;;
#                        *) echo "invalid option $REPLY";;
#                        esac
#                    done
#            ;;
#
#    #for exiting the script
#
#            exit)
#                    echo "Exiting..."
#                exit
#            ;;
#            *) echo "invalid option $REPLY";;
#            esac
#        done

        ;;

    #Exit the script
        "Exit")
            echo "Exiting..."
        exit
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
