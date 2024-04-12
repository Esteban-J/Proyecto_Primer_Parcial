deleteInfo(){
    if [ ${1,,} = "-a" ]; then
    sectionsName="${sectionsA[$2 -1]}"
    elif [ ${1,,} = "-t" ]; then
    sectionsName="${sectionsT[$2 -1]}"
    fi

    echo "¿Qué concepto deseas eliminar?"
    echo -n ">>"    
    read concept
    echo $concept 

    if sed -i "/^\[$concept\]/d" "concepts/${sectionsName}.inf"; then
        echo "Se eliminaron las líneas que contenían la palabra '$concept' entre corchetes en el archivo."
    else
        echo "No se encontró la palabra '$concept' entre corchetes en el archivo."
    fi

}
