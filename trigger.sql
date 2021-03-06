
--- Creamos la tabla donde se guardan los update y delete
CREATE TABLE IF NOT EXISTS TABLA_AUXILIAR(
    TIPO_OPERACION varchar(100),
    USUARIO varchar(100),
    FECHA DATE,
    CLAVE_PRIMARIA_AFECTADA varchar(100)
);


--- cREAMOS LA FUNCION QUE LLAMARA EL TRIGGER UPDATE
CREATE OR REPLACE FUNCTION funcion_trigger_update() RETURNS TRIGGER AS $funcion_trigger_update$
    BEGIN
        INSERT INTO TABLA_AUXILIAR(TIPO_OPERACION, USUARIO, FECHA,
					CLAVE_PRIMARIA_AFECTADA)
        VALUES ('Update', CURRENT_USER, CURRENT_DATE, OLD.id);
        RETURN NULL;
    END;

$funcion_trigger_update$
LANGUAGE plpgsql;


--- CREAMOS LA FUNCION QUE SE LLAMARA DESDE EL TRIGER DELETE
CREATE OR REPLACE FUNCTION funcion_trigger_delete() RETURNS TRIGGER AS $funcion>
    BEGIN
        INSERT INTO TABLA_AUXILIAR(TIPO_OPERACION, USUARIO, FECHA,
                                        CLAVE_PRIMARIA_AFECTADA)
        VALUES ('Delete', CURRENT_USER, CURRENT_DATE, OLD.id);
        RETURN NULL;
    END;
$funcion_trigger_delete$
LANGUAGE plpgsql;


--- CREAMOS EL TRIGGER UPDATE
CREATE TRIGGER TRIGGER_UPDATE  BEFORE UPDATE ON RESULTADOS
FOR EACH ROW EXECUTE PROCEDURE funcion_trigger_update();

--- creamos el disparador DELETE
CREATE TRIGGER TRIGGER_DELETE BEFORE DELETE ON RESULTADOS
FOR EACH ROW EXECUTE PROCEDURE funcion_trigger_delete();


















