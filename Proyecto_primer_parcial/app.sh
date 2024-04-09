#!/bin/bash
source mainMenu.sh
source subMenu.sh
source addInfo.sh
mainMenu $1
echo -n ">>"
read option
subMenu $1 $option
addInfo $1 $option