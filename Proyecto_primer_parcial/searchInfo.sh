source mainMenu.sh

searchInfo(){
    if [ ${1,,} = "-a" ]; then
    sectionsName="${sectionsA[$2 -1]}"
    elif [ ${1,,} = "-t" ]; then
    sectionsName="${sectionsT[$2 -1]}"
    fi
    echo "Que concepto buscas?"
    read Concepto

    grep "\[[^]]*$Concepto[^]]*\]" ${sectionsName}.txt
    if grep -q "\[[^]]*$Concepto[^]]*\]" ${sectionsName}.txt; then
        grep "\[[^]]*$Concepto[^]]*\]" ${sectionsName}.txt
    else
        echo "No se encontró el concepto '$Concepto' en el archivo ${sectionsName}.txt"
    fi
}

