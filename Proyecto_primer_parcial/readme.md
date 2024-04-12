# Biblioteca digital - Proyecto del primer parcial

Como proyecto del primer parcial vamos a realizar una aplicación que nos ayude a aprender acerca de las diferentes metodologías de desarrollo ágil de software.

## Vamos a empezar

Si te gustaria tener una copia del repositorio a analizar favor de entrar a la siguiente liga (https://github.com/Esteban-J/Proyecto_Primer_Parcial)
y descargar el archivo "Proyecto_primer_parcial"

### Prerequisitos

Debemos de tener instalado linux en nuestro computador, sea cual sea la version de linux (debian, ubuntu, linux mint), nos debe de funcionar 
lo siguiente que vamos a utilizar. Yo que utilizo ubuntu puedo observar su version con el siguiente comando

```
/etc/lsb-release
```

### Instalando y verificando version (funcionamiento)

Si no poseemos de ninguna version de linux en los siguientes links encontraremos tutoriales para las siguientes versiones, con los comandos
siguientes podremos verificar la version de nuestro SO:

Ubuntu (https://www.youtube.com/watch?v=airSSg1Ut0g)

```
/etc/lsb-release o /etc/os-release
```

Debian (https://www.youtube.com/watch?v=jd3f6Pq4wfg&t=27s)

```
lsb_release –a
```

Linux Mint (https://www.youtube.com/watch?v=5q7NfbRdeW0)

```
lsb_release -d
```
Para la consulta de la version debemos ejecutar el comando en nuestra consola

Nos enfocamos en una instalacion en donde deseemos conservar nuestro windows y asi poder trabajar con los 2 SO al mismo tiempo

### Ejecutando nuestro archivo

En la carpeta donde hayamos guardado nuestra carpeta descargada vamos a hacer cd (change directory), hasta encontrar los siguientes archivos

```
addinfo.sh  app.sh  concepts deleteInfo.sh   mainMenu.sh     readInfo.sh     subMenu.sh
```
Estando ya en esta carpeta se nos permitira ejecutar la aplicacion app.sh, importante enviando 1 de los 2 parametros permitidos los cuales son:

```
-a ó -t
```
El archivo app.sh se ejecuta de la siguiente forma:

```
./app.sh -a 

ó

./app.sh -t
```
NOTA: si nos aparece un error del tipo "Permiso denegado" debemos de brindar permisos al archivo para poder ejecutarlo, por lo tanto ejecutamos el siguiente comando:

```
chmod +x app.sh 
```
Despues de ejecutada la aplicacion de app.sh se nos mostrara uno de los 2 menus posibles (esto lo define la opcion que hayamos elegido), los menus se ven de la siguiente manera 
```
"##############################################################################"
"|| Bienvenido a la guiá rápida de Agile, para continuar seleccione un tema: ||"
"##############################################################################"
"|| 1. SCRUM                                                                 ||"
"|| 2. X.P.                                                                  ||" 
"|| 3. Kanban                                                                ||"
"|| 4. Crystal                                                               ||"
"##############################################################################"

ó

"###################################################################################################"
"|| Bienvenido a la guía rápida de metodologías tradicionales, para continuar seleccione un tema: ||"
"###################################################################################################"
"|| 1. Cascada                                                                                    ||"
"|| 2. Espiral                                                                                    ||" 
"|| 3. Modelo v                                                                                   ||"
"###################################################################################################"

```
En estos 2 menus podemos elegir cualquiera de las opciones que se nos vienen señaladas, al elegir una se nos mostrara un nuevo menu que nos permitira, agregar, buscar, eliminar y leer informacion de nuestros archivos de nuestra carpeta:

```
"##############################################################################"
"|| Usted está en la sección EJEMPLO seleccione la opción que desea utilizar. ||"
"##############################################################################"
"|| 1. Agregar información                                                   ||"
"|| 2. Buscar                                                                ||" 
"|| 3. Eliminar información                                                  ||"
"|| 4. Leer base de información                                              ||"
"##############################################################################"
```
Cada opcion como lo dice su nombre nos permite agregar, buscar, eliminar y leer la informacion de los archivos que estan contenidos en la carpeta "conceptos" que viene ya anexado 

### Terminando explicacion

Invitamos a que cada uno de ustedes ejecuten la aplicacion y hagan entradas, eliminen entradas, lean los documentos y disfruten la aplicacion

## Implementacion

Se invita tambien a que se analicen los archivos individualmente con algun editor de texto como vscode, esto para mayor aprendizaje y posibles modificaciones para una diferente implementacion

## Hecho con

* [VsCode](https://code.visualstudio.com) - Como editor de nuestro codigo fuente
* [GitHub](https://github.com) - Como repositorio remoto que contiene nuestros archivos 

## Contribucion

Si desea contribuir y mejorar el siguiente documento, favor de contactarnos en el siguiente correo (ContactoBinBash@coolmail.com)

## Versionado

Para el versionado y consulta de documento hacemos el uso de [GitHub](https://github.com) en el cual actualizamos, verificamos y probamos 
cada mejora en los codigos y tutoriales realizados

## Authors

* **Erick Nevarez** - *Diversos push commits de la funcionalidad del programa* - [Ericktati1234](https://github.com/Ericktati1234)

* **Esteban Jurado** - *Creacion del Menu principal y submenus, ademas de pulir detalles* - [Esteban-J](https://github.com/Esteban-J)

* **Esteban Jurado** - *Creacion de opcion eliminar y pulir detalles en los Menu y submenu* - [fernandogallogg](https://github.com/fernandogallogg)

## License

Este proyecto es usado solamente para usos didacticos, no nos hacemos responsables ninguno de los autores por el mal uso del codigo anexado
Todos los documentos y links son una via para obtener mayor conocimiento, no se obtiene ningun beneficio personal por el compartir los links

## Reconocimientos

* Un agradecimiento a los youtubers: [Herschel González](https://www.youtube.com/@HerschelGonzalez), [Adolfo Lobos](https://www.youtube.com/@Lamdolf), [TutosPC](https://www.youtube.com/@TutosPCyoutube) los cuales tienen tutoriales muy bien explicados para la instalacion de linux


