#!/bin/bash 

echo "inicializando fichero:" $0"..."

#1. En un directorio vacío (nuevo), 
#crear 9 archivos (archiv1, archiv2, etc.) utilizando el comando `touch`:
echo "Creando directorios y archivos."
mkdir files/
touch files/file1.txt
touch files/file2.txt
touch files/file3.txt
touch files/file4.txt
touch files/file5.txt
touch files/file6.txt
touch files/file7.txt
touch files/file8.txt
touch files/file9.txt

echo "Quitando permisos a todos los archivos."
chmod a-rwx files/*

#2. Modifica los permisos usando el operador `=` del `chmod`, para que queden de la siguiente manera:
   
#| Nombre del archivo | Permisos   | Comando                  |
#|:------------------:|------------|--------------------------|
#| archiv1            | -rwx------ | ` $chmod u=rwx,go= archiv1`|
#| archiv2            | -rw------- | **```$ chmod u=rw,go= archiv2```**|
#| archiv3            | -rwxrwxrwx | `$ chmod a=rwx archiv3`    |
#| archiv4            | -rwxrw-r-- | **```$ chmod u=rwx,g=rw,o=r archiv4```**|
#| archiv5            | -rwxr----- | **```$ chmod u=rwx,g=r,o= archiv5```**|
#| archiv6            | -r-xrw-r-- | **```$ chmod u=rx,g=rw,o=r archiv6```**|
#| archiv7            | -r-------x | **```$ chmod u=r,g=,o=x archiv7```**|
#| archiv8            | -rw-r--r-- | **```$ chmod u=rw,g=r,o=r archiv8```**|
#| archiv9            | -rw-rw-r-- | **```$ chmod u=rw,g=rw,o=r archiv9```**|
echo "Modificando permisos de los archivos."
chmod u=rwx,go= files/file1.txt
chmod u=rw,go= files/file2.txt
chmod a=rwx files/file3.txt
chmod u=rwx,g=rw,o=r files/file4.txt
chmod u=rwx,g=r,o= files/file5.txt
chmod u=rx,g=rw,o=r files/file6.txt
chmod u=r,g=,o=x files/file7.txt
chmod u=rw,g=r,o=r files/file8.txt
chmod u=rw,g=rw,o=r files/file9.txt

#3. Modificar los permisos de los archivos anteriores utilizando los operadores `+` y  `-` del `chmod` para que queden de la siguiente manera (Los cambios son relativos a los archivos del ejercicio anterior):
   
#| Nombre del archivo | Permisos   | Comando                  |
#|:------------------:|:------------|--------------------------|
#| archiv1            | -rwx---r-- | `$ chmod o+r archiv1`|
#| |*(Agrega lectura para otros)*| |
#| archiv2            | -r-------- | **`$ chmod u-w archiv2`**|
#| |*(Quita escritura para propietario)* | |
#| archiv3            | -rw-rw-rw- | `$ chmod a-x archiv3`    |
#| |*(Quita ejecución para todos)*| |
#| archiv4            | -rwx-w---- | **`$ chmod go-r archiv4`** |
#| |*(Quita lectura para grupo y otros)*| |
#| archiv5            | -rwx----wx | **`$ chmod g-r,o+wx archiv5`** |
#| |*(Quita lectura al grupo, agrega esc. y ejec. para otros)*||
#| archiv6            | -rwxrw---- | **`$ chmod u+w,o-r archiv6`** |
#| |*(Agrega escritura al propietario, quita la lectura a otros)*| |
#| archiv7            | -rw---x-w- | **`$ chmod u+w,g+x,o-x,o+w archiv7`** |
#| archiv8            | -------r-- | **`$ chmod u-rw,g-r archiv8`** |
#| archiv9            | -rw-rw-r-- | **`$ chmod u+rw,g+rw,o+r archiv9`** |
echo "Modificando permisos de los archivos."
chmod o+r files/file1.txt
chmod u-w files/file2.txt
chmod a-x files/file3.txt
chmod go-r files/file4.txt
chmod g-r,o+wx files/file5.txt
chmod u+w,o-r files/file6.txt
chmod u+w,g+x,o-x,o+w files/file7.txt
chmod u-rw,g-r files/file8.txt
chmod u+rw,g+rw,o+r files/file9.txt

echo "Fin."
