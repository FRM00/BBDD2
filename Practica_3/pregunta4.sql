---Consulta 1
SELECT * FROM Empleado;


---Consulta 2
SELECT *
FROM Docente
WHERE dni NOT IN (SELECT dni FROM PDI);


---Consulta 3
SELECT * FROM PDI;


---Consulta 4
SELECT *
FROM Empleado
WHERE apellido1 LIKE 'Gracia';


---Consulta 5
SELECT a.nombreAsig
FROM Asignatura a, Imparte i
WHERE 
    a.codAsig = i.codigo_asignatura
GROUP BY a.nombreAsig
HAVING COUNT(i.dni_docente) > 1;


---Consulta 6
SELECT d.dni, COUNT(i.codigo_asignatura) as CargaTrabajoDocent
FROM Docente d, Imparte i
WHERE d.dni = i.dni_docente
GROUP BY d.dni

UNION

SELECT i.dni, COUNT(p.referencia_proyecto) as CargaTrabajoInvest
FROM Investigador i, Participa p
WHERE i.dni = p.dni_investigador
GROUP BY i.dni;