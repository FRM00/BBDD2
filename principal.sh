#!/bin/bash

echo "Descargamos los archivos"
#./descargarArchivos.sh

echo "Archivos descargados"
echo " "
echo "Comenzamos con la creacion de la BD y el usuario"
echo " "
#Ejecutamos sql para crear la BD y el usuario
#sudo -iu postgres psql < crearUserBD.sql

#Cargamos los datos en la BD de los archivos csv
#sudo -iu postgres
cd /home/alumno/Desktop/Prueba
psql -U responsablep1 -d Practica1 < cargarDatos.sql
