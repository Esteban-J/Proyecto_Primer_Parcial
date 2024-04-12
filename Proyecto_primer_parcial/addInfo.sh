source mainMenu.sh
source searchInfo.sh

addInfo(){
    local sectionsName
    if [ ${1,,} = "-a" ]; then
    sectionsName="${sectionsA[$2 -1]}"
    elif [ ${1,,} = "-t" ]; then
    sectionsName="${sectionsT[$2 -1]}"
    fi

    echo introdusca concepto
    read concept
    
    search "$concept" "$sectionsName"
    if [ $? -eq 1 ]; then
        echo Introdusca la defiición
        read definition
        echo "[$concept].- $definition" >> concepts/${sectionsName}.inf
    else
        echo El concepto que intenta ingresar ya existe
    fi
}