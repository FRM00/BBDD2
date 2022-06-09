
--- Para poder llevar a cabo la especialización parcial, en este caso se debería hacer que la 
--- tabla Empleado sea no instanciable, por lo que se ha decidido eliminar esta tabla de la 
--- base de datos.

---Creamos la tabla empleado
CREATE OR REPLACE TYPE Empleado AS OBJECT (
    dni VARCHAR2(9),
    nombre VARCHAR2(50),
    apellido1 VARCHAR2(50),
    apellido2 VARCHAR2(50)
) INSTANTIABLE NOT FINAL;

---Creamos la tabla docente
CREATE TYPE Docente UNDER Empleado (
    puestoDocente VARCHAR2(50)
)NOT FINAL;

CREATE TABLE DocenteTabla OF Docente(
	PRIMARY KEY(dni)
);

---Creamos la tabla investigador
CREATE TYPE Investigador UNDER Empleado (
    orcid VARCHAR2(50)
)NOT FINAL;


CREATE TABLE InvestigadorTabla OF Investigador(
	PRIMARY KEY(dni)
);

---Creamos la tabla asignatura
CREATE TABLE Asignatura(
    codAsig int,
    nombreAsig VARCHAR2 (50),
    PRIMARY KEY (codAsig)
);



---Creamos la tabla imparte
CREATE TABLE Imparte(
    dni_docente varchar2(50),
    codigo_asignatura int,

    FOREIGN KEY (codigo_asignatura) REFERENCES Asignatura(codAsig),
    FOREIGN KEY (dni_docente) REFERENCES Docente(dni)
); 


---Creamos la tabla proyecto_investigador
CREATE TABLE ProyectoInvestigador(
    refProyecto int,
    titulo VARCHAR(50),
    fechaInicio DATE,
    fechaFin DATE,
    PRIMARY KEY (refProyecto)
);


---Creamos la tabla participa
CREATE TABLE Participa(
    dni_investigador VARCHAR(50),
	referencia_proyecto int,
	
    FOREIGN KEY (referencia_proyecto) REFERENCES ProyectoInvestigador(refProyecto),
    FOREIGN KEY (dni_investigador) REFERENCES Investigador(dni)
);

