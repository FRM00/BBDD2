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
SELECT i.codAsig, a.nombreAsig
FROM Asignatura a, Imparte i
WHERE 
    a.codAsig = i.codAsig
GROUP BY i.codAsig, a.nombreAsig
HAVING COUNT(i.DNI) > 1;


---Consulta 6
SELECT d.dni, d.nombre, d.apellido1, COUNT(i.codigo_asignatura) AS CargaTrabajoDocent
FROM Docente d, Imparte i
WHERE d.dni = i.dni_docente
GROUP BY d.dni

UNION

SELECT i.dni, i.nombre, i.apellido1, COUNT(p.referencia_proyecto) AS CargaTrabajoInvest
FROM Investigador i, Participa p
WHERE i.dni = p.dni_investigador
GROUP BY i.dni