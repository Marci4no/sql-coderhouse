-- Tabla de log para Proyecto
CREATE TABLE LogProyecto (
    log_id INT AUTO_INCREMENT PRIMARY KEY,
    id_proyecto VARCHAR(50),
    accion VARCHAR(50),
    fecha_registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Tabla de log para Presupuesto
CREATE TABLE LogPresupuesto (
    log_id INT AUTO_INCREMENT PRIMARY KEY,
    id_pliego VARCHAR(50),
    accion VARCHAR(50),
    fecha_registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Trigger BEFORE para Proyecto
DELIMITER //
CREATE TRIGGER Proyecto_Before_Update
BEFORE UPDATE ON Proyecto
FOR EACH ROW
BEGIN
    INSERT INTO LogProyecto (id_proyecto, accion)
    VALUES (OLD.id_proyecto, 'UPDATE');
END //
DELIMITER ;

-- Trigger AFTER para Proyecto
DELIMITER //
CREATE TRIGGER Proyecto_After_Insert
AFTER INSERT ON Proyecto
FOR EACH ROW
BEGIN
    INSERT INTO LogProyecto (id_proyecto, accion)
    VALUES (NEW.id_proyecto, 'INSERT');
END //
DELIMITER ;

-- Trigger BEFORE para Presupuesto
DELIMITER //
CREATE TRIGGER Presupuesto_Before_Update
BEFORE UPDATE ON Presupuesto
FOR EACH ROW
BEGIN
    INSERT INTO LogPresupuesto (id_pliego, accion)
    VALUES (OLD.id_pliego, 'UPDATE');
END //
DELIMITER ;

-- Trigger AFTER para Presupuesto
DELIMITER //
CREATE TRIGGER Presupuesto_After_Insert
AFTER INSERT ON Presupuesto
FOR EACH ROW
BEGIN
    INSERT INTO LogPresupuesto (id_pliego, accion)
    VALUES (NEW.id_pliego, 'INSERT');
END //
DELIMITER ;

-- Se actualiza un registro existente y se inserta un nuevo registro en la tabla Proyecto
UPDATE Proyecto SET proveedor_desarrollo = 'NuevoProveedor' WHERE id_proyecto = 'P1';
INSERT INTO Proyecto (id_proyecto, id_reparticion, fecha_inicio, fecha_actualizacion, proveedor_desarrollo, id_referente, componentes)
VALUES ('P11', 'MS', '2023-04-01', '2023-04-15', 'OtroProveedor', '20224457894', 20);

-- Visualizando los logs en Log Proyecto
SELECT * FROM LogProyecto;

-- Se actualiza un registro existente y se inserta un nuevo registro en la tabla Presupuesto
UPDATE Presupuesto SET modalidad_contratacion = 'NuevaModalidad' WHERE id_pliego = 'Pliego1';
INSERT INTO Presupuesto (id_pliego, id_proyecto, presupuesto_asignado_2023, modalidad_contratacion, fecha_inicio_contrato, fecha_actualizacion_contrato, fecha_fin_contrato, observaciones, proveedor_desarrollo)
VALUES ('Pliego11', 'P11', 2000000.00, 'Contratacion Directa', '2023-04-01', '2023-04-15', '2023-12-31', 'Nuevo presupuesto asignado en dólares para el proyecto P2', 'NewProvider');

-- Visualizando los logs en Log Proyecto
SELECT * FROM LogPresupuesto;