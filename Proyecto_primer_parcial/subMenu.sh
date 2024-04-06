source mainMenu.sh
subMenu() {
        clear
        echo "##############################################################################"
        echo "|| Usted está en la sección ${sections[$1-1]}, seleccione la opción que desea utilizar. ||"
        echo "##############################################################################"
        echo "|| 1. Agregar información                                                   ||"
        echo "|| 2. Buscar                                                                ||" 
        echo "|| 3. Eliminar información                                                  ||"
        echo "|| 4. Leer base de información                                              ||"
        echo "##############################################################################"
}
