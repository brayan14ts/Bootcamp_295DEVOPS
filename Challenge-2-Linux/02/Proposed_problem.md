# **Problema propuesto**

Roxs es la líder de un equipo de trabajo para una compañía que realiza Auditorías Externas. Él ha creado un archivo llamado *Lista_Precios* en su directorio `/home`. El archivo es altamente confidencial, pero resulta que existe un alto riesgo de que su archivo  sea  vulnerado  porque  otros  empleados  utilizan  su  equipo  al  finalizar  su turno.   Actualmente,   Roxs   posee   una   contraseña   segura,   pero   él   necesita resguardar los datos de ese archivo y no desea que nadie más que solamente él tenga acceso al mismo. ¿Qué solución le propondrían como equipo a Roxs? Roxs es la líder de un equipo de trabajo para una compañía que realiza Auditorías Externas. Él ha creado un archivo llamado *Lista_Precios* en su directorio `/home`. El archivo es altamente confidencial, pero resulta que existe un alto riesgo de que su archivo  sea  vulnerado  porque  otros  empleados  utilizan  su  equipo  al  finalizar  su turno.   Actualmente,   Roxs   posee   una   contraseña   segura,   pero   él   necesita resguardar los datos de ese archivo y no desea que nadie más que solamente él tenga acceso al mismo. ¿Qué solución le propondrían como equipo a Roxs? 


------------


# Solución

>1. Medidas de seguridad a implementarse:  Se debe revocar permisos de usuario sobre el archivo ~/home/Lista_precios.txt

>2. Tipo de usuarios para quienes los permisos serán cambiados: Al resto de usuarios del sistema (todos menos el propietario)

>3. Tipo de permiso que necesita ser cambiado: Permiso de lectura, Permiso de escritura y Permiso de ejecución
comandos: 
`$ cd ~/home`
` $ chmod o-rwx Lista_precios.txt`
>4. Verificar los permisos de acceso al archivo.
` $ ls -l Lista_precios.txt`

# Fin



