source mainMenu.sh 

search(){
    local concept="$1"
    local sectionsName="$2"

    if grep -iq "^\[$concept\]" "${sectionsName}.inf"; then
        return 0 
    else
        return 1  
    fi
}

searchInfo(){
    local sectionsName

    if [ "${1,,}" = "-a" ]; then
        sectionsName="${sectionsA[$2 - 1]}"
    elif [ "${1,,}" = "-t" ]; then
        sectionsName="${sectionsT[$2 - 1]}"
    fi

    echo "¿Qué concepto buscas?"
    echo -n ">>"
    read concept 

    search "$concept" "$sectionsName"
    if [ $? -eq 0 ]; then
        grep "^\[$concept\]" "${sectionsName}.txt"
    else
        echo "No se encontró el concepto '$concept' en el archivo ${sectionsName}.inf"
    fi
}





