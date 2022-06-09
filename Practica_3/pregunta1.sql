
---Creamos la tabla empleado
CREATE TABLE IF NOT EXISTS EMPLEADO (
    dni VARCHAR (9),
    nombre VARCHAR(50), 
    apellido1 VARCHAR(50),
    apellido2 VARCHAR(50),
    PRIMARY KEY (dni)
);

---Creamos la tabla docente
CREATE TABLE IF NOT EXISTS DOCENTE(
    puestoDocente varchar(50),
    PRIMARY KEY (dni)
) INHERITS(EMPLEADO);

---Creamos la tabla investigador
CREATE TABLE IF NOT EXISTS INVESTIGADOR(
    orcid varchar(50),
    PRIMARY KEY (dni)
) INHERITS(EMPLEADO);


---Creamos la tabla pdi
CREATE TABLE IF NOT EXISTS PDI(PRIMARY KEY (dni)) INHERITS(DOCENTE, INVESTIGADOR);


---Creamos la tabla asignatura
CREATE TABLE IF NOT EXISTS ASIGNATURA(
    codAsig VARCHAR(10),
    nombreAsig VARCHAR(50),
    PRIMARY KEY (codAsig)
);


---Creamos la tabla proyecto_investigador
CREATE TABLE IF NOT EXISTS PROYECTOINVESTIGADOR(
    refProyecto int,
    titulo VARCHAR(50),
    fechaInicio DATE,
    fechaFin DATE,
    PRIMARY KEY (refProyecto)
);


---Creamos la tabla participa
CREATE TABLE IF NOT EXISTS PARTICIPA(
    dni_investigador varchar(9) NOT NULL,
    referencia_proyecto int NOT NULL,

    FOREIGN KEY (referencia_proyecto) REFERENCES PROYECTOINVESTIGADOR(refProyecto),
    FOREIGN KEY (dni_investigador) REFERENCES INVESTIGADOR(dni)
); 

---Creamos la tabla imparte
CREATE TABLE IF NOT EXISTS IMPARTE(
    codigo_asignatura VARCHAR(10) NOT NULL,
    dni_docente varchar(50) NOT NULL,

    FOREIGN KEY (codigo_asignatura) REFERENCES ASIGNATURA(codAsig),
    FOREIGN KEY (dni_docente) REFERENCES DOCENTE(dni)
); 






---Insertamos 5 asignaturas
INSERT INTO ASIGNATURA(codAsig, nombreAsig)
VALUES (1, 'Ingles');

INSERT INTO ASIGNATURA(codAsig, nombreAsig)
VALUES (2, 'Matematicas');

INSERT INTO ASIGNATURA(codAsig, nombreAsig)
VALUES (3, 'Lengua');

INSERT INTO ASIGNATURA(codAsig, nombreAsig)
VALUES (4, 'Frances');

INSERT INTO ASIGNATURA(codAsig, nombreAsig)
VALUES (5, 'Tecnologia');

---Insertamos dos empleados
INSERT INTO EMPLEADO(dni, nombre, apellido1, apellido2)
VALUES ('72900153c', 'Jesus', 'Revilla', 'Miranda');

INSERT INTO EMPLEADO(dni, nombre, apellido1, apellido2)
VALUES ('72900154c', 'Laura', 'Martinez', 'Perez');

---Insertamos 2 docentes
INSERT INTO DOCENTE(dni, nombre, apellido1, apellido2, puestoDocente)
VALUES ('72900155c', 'Paula', 'Caparroz', 'Gil', 'docente_1');

INSERT INTO DOCENTE(dni, nombre, apellido1, apellido2, puestoDocente)
VALUES ('72900156c', 'Eduardo', 'Gil', 'Sanz', 'docente_2');

---Insertamos 2 investigadores
INSERT INTO INVESTIGADOR(dni, nombre, apellido1, apellido2, orcid)
VALUES ('72900157c', 'Juan', 'Martinez', 'caro', 'orcid_1');

INSERT INTO INVESTIGADOR(dni, nombre, apellido1, apellido2, orcid)
VALUES ('72900158c', 'Fernando', 'Calvo', 'Tello', 'orcid_2');

---Insertamos 2 PDI
INSERT INTO PDI(dni, nombre, apellido1, apellido2, orcid, puestoDocente)
VALUES ('72900159c', 'Antonio', 'Perez', 'Ruiz', 'orcid_3', 'docente_3');

INSERT INTO PDI(dni, nombre, apellido1, apellido2, orcid, puestoDocente)
VALUES ('72900160c', 'Sofia', 'Garcia', 'Pablo', 'orcid_4', 'docente_4');





---Insertamos 5 proyectos de investigacion
INSERT INTO PROYECTOINVESTIGADOR(refProyecto, titulo, fechaInicio, fechaFin)
VALUES (1, 'Proyecto Ingles', '1/11/11', '1/11/12');

INSERT INTO PROYECTOINVESTIGADOR(refProyecto, titulo, fechaInicio, fechaFin)
VALUES (2, 'Proyecto Frances', '11/1/11', '1/11/13');

INSERT INTO PROYECTOINVESTIGADOR(refProyecto, titulo, fechaInicio, fechaFin)
VALUES (3, 'Proyecto Matematicas', '10/11/11', '1/11/14');

INSERT INTO PROYECTOINVESTIGADOR(refProyecto, titulo, fechaInicio, fechaFin)
VALUES (4, 'Proyecto Lengua', '11/12/11', '1/11/15');

INSERT INTO PROYECTOINVESTIGADOR(refProyecto, titulo, fechaInicio, fechaFin)
VALUES (5, 'Proyecto Tecnologia', '8/11/11', '1/11/16');


---Insertamos 10 registros en participa                        
INSERT INTO PARTICIPA(dni_investigador, referencia_proyecto)
VALUES ('72900158c', 1);

INSERT INTO PARTICIPA(dni_investigador, referencia_proyecto)
VALUES ('72900158c', 2);

INSERT INTO PARTICIPA(dni_investigador, referencia_proyecto)
VALUES ('72900158c', 3);

INSERT INTO PARTICIPA(dni_investigador, referencia_proyecto)
VALUES ('72900158c', 4);

INSERT INTO PARTICIPA(dni_investigador, referencia_proyecto)
VALUES ('72900157c', 5);

INSERT INTO PARTICIPA(dni_investigador, referencia_proyecto)
VALUES ('72900157c', 1);

INSERT INTO PARTICIPA(dni_investigador, referencia_proyecto)
VALUES ('72900157c', 2);

INSERT INTO PARTICIPA(dni_investigador, referencia_proyecto)
VALUES ('72900157c', 3);

INSERT INTO PARTICIPA(dni_investigador, referencia_proyecto)
VALUES ('72900157c', 4);

INSERT INTO PARTICIPA(dni_investigador, referencia_proyecto)
VALUES ('72900157c', 5);

---Insertamos 10 registros en imparte                        
INSERT INTO IMPARTE(dni_docente, codigo_asignatura)
VALUES ('72900155c', 1);

INSERT INTO IMPARTE(dni_docente, codigo_asignatura)
VALUES ('72900155c', 2);

INSERT INTO IMPARTE(dni_docente, codigo_asignatura)
VALUES ('72900155c', 3);

INSERT INTO IMPARTE(dni_docente, codigo_asignatura)
VALUES ('72900155c', 4);

INSERT INTO IMPARTE(dni_docente, codigo_asignatura)
VALUES ('72900155c', 5);

INSERT INTO IMPARTE(dni_docente, codigo_asignatura)
VALUES ('72900156c', 1);

INSERT INTO IMPARTE(dni_docente, codigo_asignatura)
VALUES ('72900156c', 2);

INSERT INTO IMPARTE(dni_docente, codigo_asignatura)
VALUES ('72900156c', 3);

INSERT INTO IMPARTE(dni_docente, codigo_asignatura)
VALUES ('72900156c', 4);

INSERT INTO IMPARTE(dni_docente, codigo_asignatura)
VALUES ('72900156c', 5);

