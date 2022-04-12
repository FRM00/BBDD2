

--- Creamos el usuario
CREATE USER ResponsableP1 WITH PASSWORD 'root';

--- Creamos la base de datos
CREATE DATABASE Practica1 WITH OWNER ResponsableP1;

--- Dar permisos al usuario creado 
GRANT ALL PRIVILEGES ON DATABASE Practica1 TO ResponsableP1;
