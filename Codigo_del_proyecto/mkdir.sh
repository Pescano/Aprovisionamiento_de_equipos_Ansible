#!/bin/bash
directorio="/home/prueba" #almacena en una variable la ruta y el nombre que tendrá el directorio
if [ ! -d $directorio ]; then #verificación de que el directorio no existe, en caso de no existir lo crea
  mkdir $directorio"
fi