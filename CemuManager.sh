#!/bin/sh
clear
echo "-----Please chose an option-----"
PS3='------->'
options=("Start" "Update" "Install Dependincies" "Manage mlc01" "Exit")
select menu in "${options[@]}"; do
    case $menu in
    #Used for launching Cemu

        "Start")
            echo "Starting Cemu..."
    #Change this if youre cemu folder is not on home
	    cd ~/Cemu/bin
            echo "Following warnings are from Cemu, not this script"
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
            echo "Please restart CemuManager"
            exit
            ;;

        "Install Dependincies")
            clear
            echo "Choose distro base *ONLY ARCH IS SUPPOTRED CURRENTLY"
            echo "password will be requierd"
            echo "-----Please chose an option-----"
        PS3='------->'
        mlc01=("continue" "exit")
        select menu2 in "${mlc01[@]}"; do
            case $menu2 in

            "continue")
            sudo pacman -S --needed base-devel clang cmake freeglut git gtk3 libgcrypt libpulse libsecret linux-headers llvm nasm ninja systemd unzip zip

            echo "Please restart cemu manager"

        ;;

             "exit")
             exit
        ;;
        esac
        done
        ;;

    #Used for managing the mlc01 folder
        "Manage mlc01")
        clear
        echo "-----Please chose an option-----"
        PS3='------->'
        mlc01=("Move" "Delete" "change" "exit")
        select menu2 in "${mlc01[@]}"; do
            case $menu2 in

    #for moving the mlc01 folder
            Move)
                    echo "Please chose a location"



                    echo "---end test---"
                exit
            ;;

    #for Deleting the mlc01 folder
            Delete)
                clear
                    echo "Are you sure you want to delet mlc01?"
                        PS3='------->'
                        delet=("Yes" "No")
                        select menu3 in "${delet[@]}"; do
                            case $menu3 in

                            Yes)
                                echo "error"
                                echo "Not implimented"
                                echo "Exiting"
                            exit
                            ;;

                            No)
                                echo "Canceling..."
                                echo "exiting..."
                            exit
                            ;;
                        *) echo "invalid option $REPLY";;
                        esac
                    done
            ;;

    #for changing mlc01 location
            change)
            clear
                echo "-----Please enter a location-----"
                cat ~/.config/CemuStarter/mlc
                echo "^current location"

                echo "------->"
                echo "fatel error"
                echo "exiting"
                exit
            ;;
    #for exiting the script

            exit)
                    echo "Exiting..."
                exit
            ;;
            *) echo "invalid option $REPLY";;
            esac
        done

        ;;

    #Exit the script
        "Exit")
            echo "Exiting..."
        exit
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
