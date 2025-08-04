use empleados;

-- 1. Calcula la suma del presupuesto de todos los departamentos.
SELECT SUM(presupuesto) AS suma_presupuestos
FROM departamento;

-- 2. Calcula la media del presupuesto de todos los departamentos.
SELECT AVG(presupuesto) AS media_presupuestos
FROM departamento;

-- 3. Calcula el valor mínimo del presupuesto de todos los departamentos.
SELECT MIN(presupuesto) AS minimo_presupuestos
FROM departamento;

-- 4. Calcula el nombre del departamento y el presupuesto que tiene asignado, del departamento con menor presupuesto.
SELECT nombre, presupuesto
FROM departamento
ORDER BY presupuesto ASC
LIMIT 1;

-- 5. Calcula el valor máximo del presupuesto de todos los departamentos.
SELECT MAX(presupuesto) AS maximo_presupuesto
FROM departamento;

-- 6. Calcula el nombre del departamento y el presupuesto que tiene asignado, del departamento con mayor presupuesto.
SELECT nombre, presupuesto
FROM departamento
ORDER BY presupuesto DESC
LIMIT 1;

-- 7. Calcula el número total de empleados que hay en la tabla empleado.
SELECT COUNT(*) AS total_empleados
FROM empleado;

-- 8. Calcula el número de empleados que no tienen NULL en su segundo apellido.
SELECT COUNT(*) AS empleados_con_segundo_apellido
FROM empleado
WHERE apellido2 IS NOT NULL;

-- 9. Calcula el número de empleados que hay en cada departamento. Tienes que devolver dos columnas, una con el nombre del departamento y otra con el número de empleados que tiene asignados.
SELECT d.nombre, COUNT(e.id) AS num_empleados
FROM departamento d
INNER JOIN empleado e ON d.id = e.id_departamento
GROUP BY d.id, d.nombre;

-- 10. Calcula el nombre de los departamentos que tienen más de 2 empleados. El resultado debe tener dos columnas, una con el nombre del departamento y otra con el número de empleados que tiene asignados.
SELECT d.nombre, COUNT(e.id) AS num_empleados
FROM departamento d
JOIN empleado e ON d.id = e.id_departamento
GROUP BY d.id, d.nombre
HAVING COUNT(e.id) > 2;

-- 11. Calcula el número de empleados que trabajan en cada uno de los departamentos. El resultado de esta consulta también tiene que incluir aquellos departamentos que no tienen ningún empleado asociado.
SELECT d.nombre, COUNT(e.id) AS num_empleados
FROM departamento d
LEFT JOIN empleado e ON d.id = e.id_departamento
GROUP BY d.id, d.nombre;

-- 12. Calcula el número de empleados que trabajan en cada uno de los departamentos que tienen un presupuesto mayor a 200000 euros.
SELECT d.nombre, COUNT(e.id) AS num_empleados
FROM departamento d
LEFT JOIN empleado e ON d.id = e.id_departamento
WHERE d.presupuesto > 200000
GROUP BY d.id, d.nombre;
