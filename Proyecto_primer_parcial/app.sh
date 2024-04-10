#!/bin/bash
source mainMenu.sh
source subMenu.sh
source addInfo.sh
source readInfo.sh
source searchInfo.sh
mainMenu $1
echo -n ">>"
read option
subMenu $1 $option
echo -n ">>"
read option2


case $option2 in 
    1 )
    addInfo $1 $option
        ;;
    2 )
    searchInfo $1 $option
        ;;
    4 )
    readInfo $1 $option
        ;;
esac