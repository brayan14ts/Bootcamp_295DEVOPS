#!/bin/bash 


#   Mediante comandos de bash, vuelca el contenido de file1.txt a file2.txt
echo "Volcando contenido de file1.txt en file2.txt."
cp foo/dummy/file1.txt foo/dummy/file2.txt

#   Mueve file2.txt a la carpeta empty.
echo "Moviendo file2.txt de /dummy a /empty."
mv foo/dummy/file2.txt foo/empty/file2.txt

#   ------------------------------------------------------------------
#   El resultado de los comandos ejecutados sobre la jerarquía anterior deben dar el siguiente resultado.

#   foo/
#   ├─ dummy/
#   │  ├─ file1.txt
#   ├─ empty/
#      ├─ file2.texto
#   
#   Donde file1.txt y file2.txt deben contener el siguiente texto:
#   `Me encanta bash!!`
#   ------------------------------------------------------------------
echo "Fin."