source mainMenu.sh
addInfo(){
    if [ ${1,,} = "-a" ]; then
    sectionsName="${sectionsA[$2 -1]}"
    elif [ ${1,,} = "-t" ]; then
    sectionsName="${sectionsT[$2 -1]}"
    fi
    echo introdusca concepto
    read concepto
    echo introdusca def
    read def
    echo "[$concepto].- $def" >> ${sectionsName}.txt
}
addInfo2(){
if [ ${1,,} = "-a" ]; then
    sectionsName=("${sectionsA[@]}")
    elif [ ${1,,} = "-t" ]; then
    sectionsName=("${sectionsT[@]}")
    fi
    echo introdusca concepto
    read concepto
    echo introdusca def
    read def
    echo "[$concepto].- $def" >> ${sectionsName[$2 -1]}
}