#!/bin/bash
source mainMenu.sh
mainMenu $1
echo -n ">>"
read option
subMenu $option
