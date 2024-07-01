Este directorio contiene todas las Playbooks para realizar el despliegue
de un modo examen y su regresión al estado anterior o modo site.

Las Playbooks están configuradas para que se apliquen al grupo de Hosts "Linux"
en caso de querer que se apliquen a otros grupos que tengamos configurados en 
el fichero de hosts "/etc/ansible/hosts" habrá que cambiar el valor por el grupo
deseado dentro de cada playbook.

Este playbook cuenta con el inconveniente de que no deben existir usuario previos 
con el inicio de sesión automático ya que al cargar el modo exam no nos deja la 
posibilidad de cambiar de usuarios teniendo que volver al modo site y cambiar 
esta configuración.

El orden de ejecución es el siguiente para que el despliegue del modo exam
sea satisfactorio:
1. aplicaciones.yml 2.exam.yml

El orden de ejecución es el siguiente para la regresión del despliegue del 
modo exam al modo site sea satisfactorio:
1. site.yml

Cada lista de tareas tiene comentarios para poder comprender las partes confusas
del código de cada una de ellas. Así mismo como mejoras que propongo para 
mejorar estas listas sería la implementación de roles.

Los roles permiten separar trabajos de playbook, agrupando (variables, tareas, 
archivos, templates y módulos). Simplifica la lectura, escritura y mejora la 
reutilización del código.

También propondría para más seguridad la aplicación de un servidor proxy como nginx
para no tener que deshabilitar los navegadores y poder habilitar sólo la página del
instituto para que puedan subir sus ejercicios a parte de una copia física.
