-- Funcion para buscar cuantos proyectos tiene cada ministerio
DELIMITER //
CREATE FUNCTION ProyectosPorMinisterio(ministerio_nombre VARCHAR(100))
RETURNS TEXT
READS SQL DATA
BEGIN
    DECLARE resultado TEXT;
    
    SELECT CONCAT(id_proyecto, ', ', fecha_inicio, ', ', proveedor_desarrollo, ', ', componentes, '\n')
    INTO resultado
    FROM Proyecto AS P
    JOIN Reparticion AS R ON P.id_reparticion = R.id_reparticion
    WHERE R.ministerio = ministerio_nombre;
    
    RETURN resultado;
END //
DELIMITER ;


-- Funcion para conseguir el presupuesto asignado de cada proyecto
DELIMITER //
CREATE FUNCTION DetallePresupuestoProyecto(proyecto_id VARCHAR(50))
RETURNS TEXT
READS SQL DATA
BEGIN
    DECLARE resultado TEXT;
    
    SELECT CONCAT(presupuesto_asignado_2023, ', ', modalidad_contratacion, ', ', fecha_inicio_contrato, ', ', fecha_fin_contrato, ', ', observaciones, ', ', proveedor_desarrollo, '\n')
    INTO resultado
    FROM Presupuesto
    WHERE id_proyecto = proyecto_id;
    
    RETURN resultado;
END //
DELIMITER ;