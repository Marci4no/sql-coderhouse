-- Inserción de datos en la tabla Reparticion
INSERT INTO Reparticion (id_reparticion, ministerio, contacto, nombre_funcionario, apellido_funcionario, id_referente)
VALUES
    ('MS', 'Ministerio de Salud', 'contacto_ms@ba.gcba.gob.ar', 'Juan', 'Gómez', '20224457894'),
    ('ME', 'Ministerio de Economía', 'contacto_me@ba.gcba.gob.ar', 'Luis', 'Martínez', '20336698233'),
    ('MT', 'Ministerio de Transporte', 'contacto_mt@ba.gcba.gob.ar', 'Ana', 'Fernández', '20393654987');

-- Inserción de datos en la tabla ReferenteGCBA
INSERT INTO ReferenteGCBA (id_referente, nombre, apellido, correo_oficial, cargo, numero_contacto, id_reparticion, cantidad_proyectos)
VALUES
    ('20224457894', 'María', 'Rodríguez', 'maria.rodriguez@ba.gcba.gob.ar', 'Gerente', '0001-0001', 'MS', 5),
    ('20336698233', 'Carlos', 'López', 'carlos.lopez@ba.gcba.gob.ar', 'Director General', '0002-0002', 'ME', 7),
    ('20393654987', 'Laura', 'García', 'laura.garcia@ba.gcba.gob.ar', 'Director General', '0003-0003', 'MT', 4);

-- Inserción de datos en la tabla Proyecto
INSERT INTO Proyecto (id_proyecto, id_reparticion, fecha_inicio, fecha_actualizacion, proveedor_desarrollo, id_referente, componentes)
VALUES
    ('P1', 'MS', '2023-01-15', '2023-10-20', 'CyS', '20224457894', 10),
    ('P2', 'ME', '2023-02-01', '2023-09-15', 'Hexacta', '20336698233', 15),
    ('P3', 'MT', '2023-03-10', '2023-12-05', 'Most', '20393654987', 8);

-- Inserción de datos en la tabla Tecnologia
INSERT INTO Tecnologia (id_tecnologia, nombre_tecnologia, version, fecha_inicio_soporte, fecha_fin_soporte, homologada, proxima_version, pipeline, imagen_rhel, url_imagen_rhel, id_proyecto)
VALUES
    (1, 'Java', '17.0', '2021-09-14', '2026-09-14', TRUE, '18.0', TRUE, 'rhel_image_1', 'https://www.example.com/image1', 'P1'),
    (2, 'PHP', '8.0', '2022-01-01', '2023-12-31', TRUE, '9.0', FALSE, 'rhel_image_2', 'https://www.example.com/image2', 'P2'),
    (3, 'ReactJs', '18.0', '2022-01-01', '2023-12-31', TRUE, '19.0', TRUE, 'rhel_image_3', 'https://www.example.com/image3', 'P3');


-- Inserción de datos en la tabla Presupuesto
INSERT INTO Presupuesto (id_pliego, id_proyecto, presupuesto_asignado_2023, modalidad_contratacion, fecha_inicio_contrato, fecha_actualizacion_contrato, fecha_fin_contrato, observaciones, proveedor_desarrollo)
VALUES
    ('Pliego1', 'P1', 1000000.00, 'Modalidad1', '2023-01-15', '2023-02-20', '2023-12-31', 'Presupuesto asignado en dólares para el proyecto P1', 'CyS'),
    ('Pliego2', 'P2', 1500000.00, 'Modalidad2', '2023-02-01', '2023-03-15', '2023-12-31', 'Presupuesto asignado en dólares para el proyecto P2', 'Hexacta'),
    ('Pliego3', 'P3', 800000.00, 'Modalidad3', '2023-03-10', '2023-04-05', '2023-12-31', 'Presupuesto asignado en dólares para el proyecto P3', 'Most');