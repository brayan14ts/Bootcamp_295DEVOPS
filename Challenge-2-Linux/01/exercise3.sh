#!/bin/bash
echo "####################################################################"
echo "inicializando fichero:" $0"..."

#   Crear un script de bash que agrupe los pasos de los ejercicios anteriores
echo "####################################################################"
echo "Creando carpetas y archivos:"
echo "####################################################################"
echo "foo/"
echo "├─ dummy/" 
echo "│  ├─ file1.txt" 
echo "│  ├─ file2.txt"
echo "├─ empty/"
echo "####################################################################"
mkdir foo/
mkdir foo/dummy/
touch foo/dummy/file1.txt
touch foo/dummy/file2.txt 
mkdir foo/empty/

#   Agregando mensaje en file1.txt
echo "####################################################################"
echo "Agregando mensaje a file1.txt > ´Me encanta bash!!´."
echo "Me encanta bash!!" >> foo/dummy/file1.txt 

#   Mediante comandos de bash, vuelca el contenido de file1.txt a file2.txt
echo "####################################################################"
echo "Volcando contenido de file1.txt en file2.txt."
cp foo/dummy/file1.txt foo/dummy/file2.txt

#   Mueve file2.txt a la carpeta empty.
echo "####################################################################"
echo "Moviendo file2.txt de /dummy a /empty."
mv foo/dummy/file2.txt foo/empty/file2.txt

#   Crear un script de bash que permita establecer el texto de file1.txt
#   alimentándose como parámetro al invocarlo.
#   Si se le pasa un texto vacío al invocar el script, el texto de los ficheros, 
#   el texto por defecto será: `Que me gusta bash!!!!`
echo "####################################################################"
if [ -z "$1" ]
then
  echo "Reemplazando texto actual de file1.txt por: Que me gusta bash!!!!"
  cat /dev/null > foo/dummy/file1.txt 
  echo "Que me gusta bash!!!!" >> foo/dummy/file1.txt 
else
  echo "Reemplazando texto actual de file1.txt por:" $1"."
  cat /dev/null > foo/dummy/file1.txt
  echo "$1" >> foo/dummy/file1.txt
fi

echo "####################################################################"
echo "####################################################################"
echo "#####               ####                ####      ########    ######"
echo "#####               ####                ####       #######    ######"
echo "#####    #####################    ##########        ######    ######"
echo "#####    #####################    ##########    #    #####    ######"
echo "#####              ###########    ##########    ##    ####    ######"
echo "#####              ###########    ##########    ###    ###    ######"
echo "#####    #####################    ##########    ####    ##    ######"
echo "#####    ###############                ####    #####    #    ######"
echo "#####    ###############                ####    ######        ######"
echo "####################################################################"
echo "####################################################################"

 






