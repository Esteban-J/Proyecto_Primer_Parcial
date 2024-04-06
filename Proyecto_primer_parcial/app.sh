#!/bin/bash
source mainMenu.sh
source subMenu.sh
mainMenu $1
echo -n ">>"
read option
subMenu $option
