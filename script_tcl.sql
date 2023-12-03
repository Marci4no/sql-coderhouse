-- Iniciamos la transacción
START TRANSACTION;

-- Antes de eliminar el referente, actualizar los proyectos que referencian ese id_referente para evitar errores de FK
UPDATE Proyecto SET id_referente = '20336698233' WHERE id_referente = '20224457894';

-- Eliminar un registro de la tabla ReferenteGCBA
DELETE FROM ReferenteGCBA WHERE id_referente = '20224457894';
-- Comentario: Sentencia para eliminar el registro

-- INSERT INTO ReferenteGCBA (id_referente, nombre, apellido, correo_oficial, cargo, numero_contacto, id_reparticion, cantidad_proyectos)
-- VALUES ('20224457894', 'María', 'Rodríguez', 'maria.rodriguez@ba.gcba.gob.ar', 'Gerente', '0001-0001', 'MS', 5);
-- Comentario: Sentencia para re-insertar el registro eliminado

-- Insertar 8 nuevos registros en la tabla Tecnologia

INSERT INTO Tecnologia (id_tecnologia, nombre_tecnologia, version, fecha_inicio_soporte, fecha_fin_soporte, homologada, proxima_version, pipeline, imagen_rhel, url_imagen_rhel, id_proyecto)
VALUES
    (4, 'Python', '3.9', '2022-01-01', '2023-12-31', TRUE, '3.10', TRUE, 'rhel_image_4', 'https://www.example.com/image4', 'P1'),
    (5, 'Node.js', '14.0', '2022-01-01', '2023-12-31', TRUE, '15.0', FALSE, 'rhel_image_5', 'https://www.example.com/image5', 'P2'),
    (6, 'Angular', '12.0', '2022-01-01', '2023-12-31', TRUE, '13.0', TRUE, 'rhel_image_6', 'https://www.example.com/image6', 'P3'),
    (7, 'Ruby', '3.0', '2022-01-01', '2023-12-31', TRUE, '3.1', FALSE, 'rhel_image_7', 'https://www.example.com/image7', 'P1');

SAVEPOINT SP_cuarto_insert;

-- Insertar los 4 registros faltantes para completar los 8 registros

INSERT INTO Tecnologia (id_tecnologia, nombre_tecnologia, version, fecha_inicio_soporte, fecha_fin_soporte, homologada, proxima_version, pipeline, imagen_rhel, url_imagen_rhel, id_proyecto)
VALUES
    (8, 'C#', '9.0', '2022-01-01', '2023-12-31', TRUE, '10.0', TRUE, 'rhel_image_8', 'https://www.example.com/image8', 'P2'),
    (9, 'Vue.js', '4.0', '2022-01-01', '2023-12-31', TRUE, '5.0', TRUE, 'rhel_image_9', 'https://www.example.com/image9', 'P3'),
    (10, 'Django', '4.0', '2022-01-01', '2023-12-31', TRUE, '4.1', FALSE, 'rhel_image_10', 'https://www.example.com/image10', 'P1'),
    (11, 'Spring', '6.0', '2022-01-01', '2023-12-31', TRUE, '6.1', TRUE, 'rhel_image_11', 'https://www.example.com/image11', 'P2');

    SAVEPOINT SP_octavo_insert;

-- Eliminación de savepoints anteriores (primeros 4 registros)
-- ROLLBACK SP_cuarto_insert;

-- COMMIT;