sectionsA=("SCRUM" "X.P." "Kanban" "Crystal")
sectionsT=("Cascada" "Espiral" "Modelo v")

mainMenu() {
if [ ${1,,} = "-a" ]; then
clear
echo "##############################################################################"
echo "|| Bienvenido a la guiá rápida de Agile, para continuar seleccione un tema: ||"
echo "##############################################################################"
echo "|| 1. SCRUM                                                                 ||"
echo "|| 2. X.P.                                                                  ||" 
echo "|| 3. Kanban                                                                ||"
echo "|| 4. Crystal                                                               ||"
echo "##############################################################################"
elif [ ${1,,} = "-t" ]; then
clear
echo "###################################################################################################"
echo "|| Bienvenido a la guía rápida de metodologías tradicionales, para continuar seleccione un tema: ||"
echo "###################################################################################################"
echo "|| 1. Cascada                                                                                    ||"
echo "|| 2. Espiral                                                                                    ||" 
echo "|| 3. Modelo v                                                                                   ||"
echo "###################################################################################################"
fi 
}