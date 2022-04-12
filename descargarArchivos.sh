#!/bin/bash

#creamos una carpeta para guardar los archivos CSV
mkdir -m 7777 Archivos_CSV
cd Archivos_CSV
echo "Carpeta creada"

#oferta y ocupacion de las plazas
wget -O ofertaOcupacion2122.csv  https://zaguan.unizar.es/record/108270/files/CSV.csv
wget -O ofertaOcupacion2021.csv https://zaguan.unizar.es/record/96835/files/CSV.csv
wget -O ofertaOcupacion1920 https://zaguan.unizar.es/record/87665/files/CSV.csv

#faltan los resultados
#wget
#wget
#wget

#notas de corte
wget -O notasCorte2122.csv https://zaguan.unizar.es/record/109322/files/CSV.csv
wget -O notasCorte2021.csv https://zaguan.unizar.es/record/98173/files/CSV.csv
wget -O notasCorte1920.csv https://zaguan.unizar.es/record/87663/files/CSV.csv

#acuerdos de movilidad
wget -O movilidad2122.csv https://zaguan.unizar.es/record/107373/files/CSV.csv
wget -O movilidad2021.csv https://zaguan.unizar.es/record/95648/files/CSV.csv
wget -O movilidad1920.csv https://zaguan.unizar.es/record/83980/files/CSV.csv

#alumnos egresados por titulacion
wget -O egresados2021.csv https://zaguan.unizar.es/record/107371/files/CSV.csv
wget -O egresados1920.csv https://zaguan.unizar.es/record/95646/files/CSV.csv
wget -O egresados1819.csv https://zaguan.unizar.es/record/83979/files/CSV.csv

echo "Archivos descargados"
