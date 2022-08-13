#!/bin/bash 

echo "inicializando fichero:" $0"..."
#Crea un script de bash que descargue el contenido de una página web a un fichero.
echo "Descargando index.html desde https://www.linkedin.com/"
wget "https://www.linkedin.com/"

# en el mismo una palabra dada (esta se pasará por parametro) y muestre por pantalla el número de linea donde aparece.

if [ -z "$1" ]
then
  echo "Error: No ingresaste ninguna parametro al ejecutar el script."
  echo "Ingresa una palabra ahora"
  read palabra
  echo "La palabra" $palabra "coincide con las lineas:"
  grep -n --color=always $palabra index.html

else
  echo "Buscando desde index.html, la palabra:" $1"."
  echo "La palabra" $1 "coincide con las lineas:"
  grep -n --color=always $1 index.html
fi
echo "Fin."