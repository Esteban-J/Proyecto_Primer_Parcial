source mainMenu.sh
addInfo(){
    if [ ${1,,} = "-a" ]; then
    sectionsName="${sectionsA[$2 -1]}"
    elif [ ${1,,} = "-t" ]; then
    sectionsName="${sectionsT[$2 -1]}"
    fi
    echo introdusca concepto
    read concepto
    echo introdusca deffinición
    read definition
    echo "[$concepto].- $definition" >> ${sectionsName}.txt
}