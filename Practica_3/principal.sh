#!/bin/bash

echo "Ejecucion pregunta 1"
echo " "

cd /home/alumno/Desktop/Prueba/Practica_3

sudo -iu postgres psql < crearUserBD.sql

psql -U postgres -d Practica3 < pregunta1.sql

