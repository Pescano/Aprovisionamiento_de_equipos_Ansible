Este directorio contiene todas las Playbooks para realizar el despliegue
de un servidor web con una base de datos MySQL con el gestor web phpMyAdmin.

Las Playbooks están configuradas para que se apliquen al grupo de Hosts "Linux"
en caso de querer que se apliquen a otros grupos que tengamos configurados en 
el fichero de hosts "/etc/ansible/hosts" habrá que cambiar el valor por el grupo
deseado dentro de cada playbook.

Antes de ejecutar la playbooks recordar que este instalado la colección de ansible
community.mysql, esta se instala con el comando "ansible-galaxy collection install 
community.mysql". Para comprobar si está instalado hay que repasar la lista de 
colecciones instaladas con "ansible-galaxy collection list".

El orden de ejecución es el siguiente para que el despliegue sea satisfactorio:
1. dependencias.yml 2.instalar_servidor_web.yml 3.config_mysql.yml

Cada lista de tareas tiene comentarios para poder comprender las partes confusas
del código de cada una de ellas. Así mismo como mejoras que propongo para 
mejorar estas listas sería la implementación de roles.

Los roles permiten separar trabajos de playbook, agrupando (variables, tareas, 
archivos, templates y módulos). Simplifica la lectura, escritura y mejora la 
reutilización del código.
