#!/bin/bash 
echo "inicializando fichero:" $0"..."

#Sitúate en tu directorio personal de usuario.
echo "Situando en directorio personal de usuario."
cd ~
#Crea un directorio llamado "nueva_carpeta".
echo "Creando nueva_carpeta."
mkdir nueva_carpeta

#Accede a esta carpeta que acabas de crear.
echo "Accediendo a nueva_carpeta"
cd nueva_carpeta

#Crea un archivo en este directorio y llámalo archivo_nuevo.txt.
echo "Creando archivo_nuevo.txt"
touch archivo_nuevo.txt

#Cámbiale el nombre a este último archivo que has creado y llámalo archivo_viejo.txt.
echo "Renombrando archivo_nuevo.txt por archivo_viejo.txt"
mv archivo_nuevo.txt archivo_viejo.txt

#Añade el texto "Nueva línea de texto" al archivo desde el terminal.
echo "Añadiendo información a archivo_viejo.txt"
echo "Nueva línea de texto" >> archivo_viejo.txt

#Cambia los permisos de este archivo para que todos los usuarios puedan leer, escribir y ejecutarlo.
echo "otorgando permisos a archivo_viejo.txt"
chmod 777 archivo_viejo.txt

#Sube un nivel de directorio, es decir, vuelve al directorio anterior.
echo "Volviendo al directorio anterior"
cd ..

#Crea un enlace al archivo que creaste en esta carpeta llamado "enlace.ln".
echo "Creando enlace.ln"
ln -s nueva_carpeta/archivo_viejo.txt enlace.ln

#Elimina el directorio "nueva_carpeta" y los archivos que contenga.
echo "Eliminando nueva_carpeta y todos sus archivos"
rm -R nueva_carpeta

echo "Fin."