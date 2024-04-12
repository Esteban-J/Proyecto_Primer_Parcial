#!/bin/bash

#imports
source mainMenu.sh
source subMenu.sh
source addInfo.sh
source readInfo.sh
source searchInfo.sh
#source valInput.sh

flag=$1

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

while true; do
    mainMenu $flag
    read option
    
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

    if [ $option == "q" ]; then
        exit 
    fi
    
    subMenu $flag $option
    
    echo -n ">>"
    read option2

    while [ $option2 != "1" ] && [ $option2 != "2" ] && [ $option2 != "3" ] && [ $option2 != "4" ] && [ $option2 != "q" ] && [ $option2 != "b" ]; do
        echo Opcion no reconocida. Ingrese una opcion valida del menú o...
        echo "b - regresar al menú principal | q - Terminar programa"
        echo -n ">>"
        read option2
    done
    
    case $option2 in
        1) #SCRUM/Cascada
            addInfo $flag $option
            echo "| q - Terminar | b - Regrear al menú principal |"
            read option2
            ;;&
        2) #XP/Espiral
            searchInfo $1 $option
            ;;&
        3) #Kanban/Modelo v
            ;;&
        4) #Krysta
            readInfo $flag $option
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
done
