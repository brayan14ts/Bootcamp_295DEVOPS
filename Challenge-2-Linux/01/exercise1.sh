#!/bin/bash 

echo "inicializando fichero:" $0"..."

#   Crea mediante comandos de bash la siguiente jerarquía de ficheros y directorios.
#   foo/
#   ├─ dummy/ 
#   │  ├─ file1.txt 
#   │  ├─ file2.txt
#   ├─ empty/
echo "Creando carpetas y archivos."
mkdir foo/
mkdir foo/dummy/
touch foo/dummy/file1.txt
touch foo/dummy/file2.txt 
mkdir foo/empty/

#   file1.txt debe contener el siguiente texto: `Me encanta bash!!`
echo "Agregando mensaje a file1.txt > ´Me encanta bash!!´"
echo "Me encanta bash!!" >> foo/dummy/file1.txt
echo "Fin."