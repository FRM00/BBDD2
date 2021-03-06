
--- cREAMOS LA TABLA OFERTA Y OCUPACION

CREATE TABLE IF NOT EXISTS OFERTA_OCUPACION(
	CURSO_ACADEMICO int,
        ESTUDIO varchar(200),
        LOCALIDAD varchar(50),
        CENTRO varchar(200),
        TIPO_CENTRO varchar(50),
        TIPO_ESTUDIO varchar(10),
        PLAZAS_OFERTADAS int,
        PLAZAS_MATRICULADAS int,
        PLAZAS_SOLICITADAS int,
        INDICE_OCUPACION float,
        FECHA_ACTUALIZACION varchar(15)
);

---Incorporamos los datos del año 19-20
COPY OFERTA_OCUPACION(CURSO_ACADEMICO, ESTUDIO, LOCALIDAD, CENTRO, TIPO_CENTRO,
	TIPO_ESTUDIO, PLAZAS_OFERTADAS, PLAZAS_MATRICULADAS, PLAZAS_SOLICITADAS,
	INDICE_OCUPACION, FECHA_ACTUALIZACION)
FROM '/home/alumno/Desktop/Pruebas/Archivos_CSV/ofertaOcupacion1920.csv'
DELIMITER ';' csv header;

---Incorporamos los datos del año 20-21
COPY OFERTA_OCUPACION(CURSO_ACADEMICO, ESTUDIO, LOCALIDAD, CENTRO, TIPO_CENTRO,
        TIPO_ESTUDIO, PLAZAS_OFERTADAS, PLAZAS_MATRICULADAS, PLAZAS_SOLICITADAS,
        INDICE_OCUPACION, FECHA_ACTUALIZACION)
FROM '/home/alumno/Desktop/Pruebas/Archivos_CSV/ofertaOcupacion2021.csv'
DELIMITER ';' csv header;

---Incorporamos los datos del año 21-22
COPY OFERTA_OCUPACION(CURSO_ACADEMICO, ESTUDIO, LOCALIDAD, CENTRO, TIPO_CENTRO,
        TIPO_ESTUDIO, PLAZAS_OFERTADAS, PLAZAS_MATRICULADAS, PLAZAS_SOLICITADAS,
        INDICE_OCUPACION, FECHA_ACTUALIZACION)
FROM '/home/alumno/Desktop/Pruebas/Archivos_CSV/ofertaOcupacion2122.csv'
DELIMITER ';' csv header;


----------------------------------------------------------------------------------------------------

--- Creamos la tabla de notas de corte
CREATE TABLE IF NOT EXISTS NOTAS_CORTE(
        CURSO_ACADEMICO int,
	ESTUDIO varchar(200),
        LOCALIDAD varchar(50),
        CENTRO varchar(200),
        PRELA_CONVO_NOTA_DEF int,
        NOTA_CORTE_DEFINITIVA_JULIO int,
        NOTA_CORTE_DEFINITIVA_SEPTIEMBRE int,
        FECHA_ACTUALIZACION varchar(15)

);

---Incorporamos los datos del año 19-20
COPY NOTAS_CORTE(CURSO_ACADEMICO, ESTUDIO, LOCALIDAD, CENTRO, PRELA_CONVO_NOTA_DEF,
		NOTA_CORTE_DEFINITIVA_JULIO, NOTA_CORTE_DEFINITIVA_SEPTIEMBRE, FECHA_ACTUALIZACION)
FROM '/home/alumno/Desktop/Pruebas/Archivos_CSV/notasCorte1920.csv'
DELIMITER ';' csv header;

---Incorporamos los datos del año 20-21
COPY NOTAS_CORTE(CURSO_ACADEMICO, ESTUDIO, LOCALIDAD, CENTRO, PRELA_CONVO_NOTA_DEF,
                NOTA_CORTE_DEFINITIVA_JULIO, NOTA_CORTE_DEFINITIVA_SEPTIEMBRE, FECHA_ACTUALIZACION)
FROM '/home/alumno/Desktop/Pruebas/Archivos_CSV/notasCorte2021.csv'
DELIMITER ';' csv header;

---Incorporamos los datos del año 21-22
COPY NOTAS_CORTE(CURSO_ACADEMICO, ESTUDIO, LOCALIDAD, CENTRO, PRELA_CONVO_NOTA_DEF,
                NOTA_CORTE_DEFINITIVA_JULIO, NOTA_CORTE_DEFINITIVA_SEPTIEMBRE, FECHA_ACTUALIZACION)
FROM '/home/alumno/Desktop/Pruebas/Archivos_CSV/notasCorte2122.csv'
DELIMITER ';' csv header;



--------------------------------------------------------------------------------------------------



--- Creamos la tabla sobre la movilidad Erasmus y Sicue

CREATE TABLE IF NOT EXISTS MOVILIDAD(
        CURSO_ACADEMICO int,
	NOMBRE_PROGRAMA_MOVILIDAD varchar(200),
        NOMBRE_AREA_ESTUDIOS_MOV varchar(200),
        CENTRO varchar(200),
        IN_OUT varchar(200),
        NOMBRE_IDIOMA_NIVEL_MOVILIDAD varchar(200),
        PAIS_UNIVERSIDAD_ACUERDO varchar(200),
        UNIVERSIDAD_ACUERDO varchar(200),
        PLAZAS_OFERTADAS_ALUMNOS varchar(200),
        PLAZAS_ASIGNADAS_ALUMNOS_OUT int,
        FECHA_ACTUALIZACION varchar(15)
);

--- Incorporamos los datos del año 19-20
COPY MOVILIDAD(CURSO_ACADEMICO, NOMBRE_PROGRAMA_MOVILIDAD, NOMBRE_AREA_ESTUDIOS_MOV, CENTRO, IN_OUT,
		NOMBRE_IDIOMA_NIVEL_MOVILIDAD, PAIS_UNIVERSIDAD_ACUERDO, UNIVERSIDAD_ACUERDO,
		PLAZAS_OFERTADAS_ALUMNOS, PLAZAS_ASIGNADAS_ALUMNOS_OUT, FECHA_ACTUALIZACION)
FROM '/home/alumno/Desktop/Pruebas/Archivos_CSV/movilidad1920.csv'
DELIMITER ';' csv header;

--- Incorporamos los datos del año 20-21
COPY MOVILIDAD(CURSO_ACADEMICO, NOMBRE_PROGRAMA_MOVILIDAD, NOMBRE_AREA_ESTUDIOS_MOV, CENTRO, IN_OUT,
                NOMBRE_IDIOMA_NIVEL_MOVILIDAD, PAIS_UNIVERSIDAD_ACUERDO, UNIVERSIDAD_ACUERDO,
                PLAZAS_OFERTADAS_ALUMNOS, PLAZAS_ASIGNADAS_ALUMNOS_OUT, FECHA_ACTUALIZACION)
FROM '/home/alumno/Desktop/Pruebas/Archivos_CSV/movilidad2021.csv'
DELIMITER ';' csv header;


--- Incorporamos los datos del año 21-22
COPY MOVILIDAD(CURSO_ACADEMICO, NOMBRE_PROGRAMA_MOVILIDAD, NOMBRE_AREA_ESTUDIOS_MOV, CENTRO, IN_OUT,
                NOMBRE_IDIOMA_NIVEL_MOVILIDAD, PAIS_UNIVERSIDAD_ACUERDO, UNIVERSIDAD_ACUERDO,
                PLAZAS_OFERTADAS_ALUMNOS, PLAZAS_ASIGNADAS_ALUMNOS_OUT, FECHA_ACTUALIZACION)
FROM '/home/alumno/Desktop/Pruebas/Archivos_CSV/movilidad2122.csv'
DELIMITER ';' csv header;


----------------------------------------------------------------------------------------------------


--- cREAMOS LA TABLA egresados

CREATE TABLE IF NOT EXISTS EGRESADOS(
        CURSO_ACADEMICO int,
	LOCALIDAD varchar(50),
        ESTUDIO varchar(200),
        TIPO_ESTUDIO varchar(10),
        TIPO_EGRESO varchar(200),
	SEXO varchar(50),
        ALUMNOS_GRADUADOS int,
        ALUMNOS_INTERRUMPEN_ESTUDIOS int,
        ALUMNOS_INTERRUMPEN_EST_ANO1 int,
	ALUMNOS_TRASLADAN_OTRA_UNIV int,
        DURACION_MEDIA_GRADUADOS float,
	TASA_EFICIENCIA float,
        FECHA_ACTUALIZACION varchar(15)
);

--- Incorporamos los datos del año 18-19
COPY EGRESADOS(CURSO_ACADEMICO, LOCALIDAD, ESTUDIO, TIPO_ESTUDIO, TIPO_EGRESO, SEXO, ALUMNOS_GRADUADOS,
		ALUMNOS_INTERRUMPEN_ESTUDIOS, ALUMNOS_INTERRUMPEN_EST_ANO1, ALUMNOS_TRASLADAN_OTRA_UNIV
		SURACION_MEDIA_GRADUADOS, TASA_EFICIENCIA, FECHA_ACTUALIZACION)
FROM '/home/alumno/Desktop/Pruebas/Archivos_CSV/egresados1819.csv'
DELIMITER ';' csv header;

--- Incorporamos los datos del año 19-20
COPY EGRESADOS(CURSO_ACADEMICO, LOCALIDAD, ESTUDIO, TIPO_ESTUDIO, TIPO_EGRESO, SEXO, ALUMNOS_GRADUADOS,
                ALUMNOS_INTERRUMPEN_ESTUDIOS, ALUMNOS_INTERRUMPEN_EST_ANO1, ALUMNOS_TRASLADAN_OTRA_UNIV
                SURACION_MEDIA_GRADUADOS, TASA_EFICIENCIA, FECHA_ACTUALIZACION)
FROM '/home/alumno/Desktop/Pruebas/Archivos_CSV/egresados1920.csv'
DELIMITER ';' csv header;

--- Incorporamos los datos del año 20-21
COPY EGRESADOS(CURSO_ACADEMICO, LOCALIDAD, ESTUDIO, TIPO_ESTUDIO, TIPO_EGRESO, SEXO, ALUMNOS_GRADUADOS,
                ALUMNOS_INTERRUMPEN_ESTUDIOS, ALUMNOS_INTERRUMPEN_EST_ANO1, ALUMNOS_TRASLADAN_OTRA_UNIV
                SURACION_MEDIA_GRADUADOS, TASA_EFICIENCIA, FECHA_ACTUALIZACION)
FROM '/home/alumno/Desktop/Pruebas/Archivos_CSV/egresados2021.csv'
DELIMITER ';' csv header;


--- cREAMOS LA TABLA DE RESULTADOS

CREATE TABLE IF NOT EXISTS RESULTADOS(
        CURSO_ACADEMICO int,
        CENTRO varchar(200),
	ESTUDIO varchar(200),
        TIPO_ESTUDIO varchar(10),
        ALUMNOS_MATRICULADOS int,
        ALUMNOS_NUEVO_INGRESO int,
        PLAZAS_OFERTADAS int,
	ALUMNOS_GRADUADOS int,
	ALUMNOS_ADAPTA_GRADO_MATRI int,
	ALUMNOS_ADAPTA_GRADO_MATRI_NI int,
	ALUMNOS_ADAPTA_GRADO_TITULADO int,
	ALUMNOS_CON_RECONOCIMIENTO int,
	ALUMNOS_MOVILIDAD_ENTRADA int,
	ALUMNOS_MOVILIDAD_SALIDA int,
	CREDITOS_MATRICULADOS float,
	CREDITOS_RECONOCIDOS float,
	DURACION_MEDIA_GRADUADOS float,
	TASA_EXITO float,
	TASA_RENDIMIENTO float,
	TASA_EFICIENCIA float,
	TASA_ABANDONO float,
	TASA_GRADUACION float,
        FECHA_ACTUALIZACION varchar(15)
);


--- Incorporamos los datos del año 20-21
COPY RESULTADOS(CURSO_ACADEMICO, CENTRO, ESTUDIO, TIPO_ESTUDIO,
	ALUMNOS_MATRICULADOS, ALUMNOS_NUEVO_INGRESO, PLAZAS_OFERTADAS,
	ALUMNOS_GRADUADOS, ALUMNOS_ADAPTA_GRADO_MATR, ALUMNOS_ADAPTA_GRADO_MATRI_NI,
	ALUMNOS_ADAPTA_GRADO_TITULAD, ALUMNOS_CON_RECONOCIMIENTO, ALUMNOS_MOVILIDAD_ENTRADA,
        ALUMNOS_MOVILIDAD_SALIDA, CREDITOS_MATRICULADOS, CREDITOS_RECONOCIDOS,
	DURACION_MEDIA_GRADUADOS, TASA_EXITO, TASA_RENDIMIENTO, TASA_EFICIENCIA)
FROM '/home/alumno/Desktop/Pruebas/Archivos_CSV/resultados2021.csv'
DELIMITER ';' csv header;


--- Incorporamos los datos del año 19-20
COPY RESULTADOS(CURSO_ACADEMICO, CENTRO, ESTUDIO, TIPO_ESTUDIO,
        ALUMNOS_MATRICULADOS, ALUMNOS_NUEVO_INGRESO, PLAZAS_OFERTADAS,
        ALUMNOS_GRADUADOS, ALUMNOS_ADAPTA_GRADO_MATR, ALUMNOS_ADAPTA_GRADO_MATRI_NI,
        ALUMNOS_ADAPTA_GRADO_TITULAD, ALUMNOS_CON_RECONOCIMIENTO, ALUMNOS_MOVILIDAD_ENTRADA,
        ALUMNOS_MOVILIDAD_SALIDA, CREDITOS_MATRICULADOS, CREDITOS_RECONOCIDOS,
        DURACION_MEDIA_GRADUADOS, TASA_EXITO, TASA_RENDIMIENTO, TASA_EFICIENCIA)
FROM '/home/alumno/Desktop/Pruebas/Archivos_CSV/resultados1920.csv'
DELIMITER ';' csv header;


--- Incorporamos los datos del año 18-19
COPY RESULTADOS(CURSO_ACADEMICO, CENTRO, ESTUDIO, TIPO_ESTUDIO,
        ALUMNOS_MATRICULADOS, ALUMNOS_NUEVO_INGRESO, PLAZAS_OFERTADAS,
        ALUMNOS_GRADUADOS, ALUMNOS_ADAPTA_GRADO_MATR, ALUMNOS_ADAPTA_GRADO_MATRI_NI,
        ALUMNOS_ADAPTA_GRADO_TITULAD, ALUMNOS_CON_RECONOCIMIENTO, ALUMNOS_MOVILIDAD_ENTRADA,
        ALUMNOS_MOVILIDAD_SALIDA, CREDITOS_MATRICULADOS, CREDITOS_RECONOCIDOS,
        DURACION_MEDIA_GRADUADOS, TASA_EXITO, TASA_RENDIMIENTO, TASA_EFICIENCIA)
FROM '/home/alumno/Desktop/Pruebas/Archivos_CSV/resultados1819.csv'
DELIMITER ';' csv header;



