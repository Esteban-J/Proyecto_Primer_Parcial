source mainMenu.sh
subMenu() {
        if [ ${1,,} = "-a" ]; then
        sectionsToShow=("${sectionsA[@]}")
        elif [ ${1,,} = "-t" ]; then
        sectionsToShow=("${sectionsT[@]}")
        fi
        clear
        echo "##############################################################################"
        echo "|| Usted está en la sección ${sectionsToShow[$2-1]}, seleccione la opción que desea utilizar. ||"
        echo "##############################################################################"
        echo "|| 1. Agregar información                                                   ||"
        echo "|| 2. Buscar                                                                ||" 
        echo "|| 3. Eliminar información                                                  ||"
        echo "|| 4. Leer base de información                                              ||"
        echo "##############################################################################"        
}
