#!/bin/bash

#imports
source mainMenu.sh
source subMenu.sh
source addInfo.sh
source readInfo.sh
source searchInfo.sh
source deleteInfo.sh

flag=$1

# Correct flag input check ----------
if [ $# -eq 0 ]; then
    echo Se requiere opción...
    echo "-a (Metodologias tradicionales) -t (Metodologias Ágiles)" 
    exit 1
fi

if [ $# -gt 1 ]; then
    echo Demasiadas opciones. Eliga solo una...
    echo "-a (Metodologias tradicionales) -t (Metodologias Ágiles)" 
    exit 1
fi

if [ $flag != "-a" ] && [ $flag != "-t" ]; then
    echo Opcion no reconocida...
    echo "-a (Metodologias tradicionales) -t (Metodologias Ágiles)" 
    exit 1
fi
#--------------------------------

# app will execute until q (quit) is selected 
while true; do
    mainMenu $flag
    read option # option is going to serve later as an index poistion to display a metodology name

    # Correct main menu option check ---------------
    if [ $flag == "-a" ]; then
        while [ $option != "1" ] && [ $option != "2" ] && [ $option != "3" ] && [ $option != "4" ] && [ $option != "q" ]; do
            echo "-a Opcion no reconocida. Ingrese una opcion valida del menú o..."
            echo "q - Terminar programa"
            read option
        done
    elif [ $flag == "-t" ]; then
        while [ $option != "1" ] && [ $option != "2" ] && [ $option != "3" ] && [ $option != "q" ]; do
            echo "-t Opcion no reconocida. Ingrese una opcion valida del menú o..."
            echo "q - Terminar programa"
            read option
        done
    fi
    #-----------------------------------------------

    if [ $option == "q" ]; then
        clear
        exit 
    fi
    
    subMenu $flag $option
    
    echo -n ">>"
    read option2


    # Correct sub menu option check ---------------
    while [ $option2 != "1" ] && [ $option2 != "2" ] && [ $option2 != "3" ] && [ $option2 != "4" ] && [ $option2 != "q" ] && [ $option2 != "b" ]; do
        echo Opcion no reconocida. Ingrese una opcion valida del menú o...
        echo "b - regresar al menú principal | q - Terminar programa"
        echo -n ">>"
        read option2
    done
    #-----------------------------------------------

    
    case $option2 in
        1) # Add info
            addInfo $flag $option
            echo "| q - Terminar | b - Regrear al menú principal |"
            echo -n ">>"
            read option2
            ;;&
        2) # Search info
            searchInfo $flag $option
            echo "| q - Terminar | b - Regrear al menú principal |"
            echo -n ">>"
            read option2
            ;;&
        3) # Delete info
            deleteInfo $flag $option
            echo "| q - Terminar | b - Regrear al menú principal |"
            echo -n ">>"
            read option2
            ;;&
        4) # Read Info
            readInfo $flag $option
            echo "| q - Terminar | b - Regrear al menú principal |"
            echo -n ">>"
            read option2
            ;;&
        q)  
            echo "Exiting..."
            break 
            ;;&
        b)  
            continue
            ;;&
        *)
            
            ;;
    esac

    # Correct finish point check ---------------
    while [ $option2 != "q" ] && [ $option2 != "b" ]; do
        echo Opcion no reconocida...
        echo -n ">>"
        read option2
    done
    #-----------------------------------------------

    if [ $option2 == "q" ]; then
        clear
        exit
    fi

done
