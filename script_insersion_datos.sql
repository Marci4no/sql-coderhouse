-- Inserción de datos en la tabla Reparticion
INSERT INTO Reparticion (id_reparticion, ministerio, contacto, nombre_funcionario, apellido_funcionario, id_referente)
VALUES
    ('MS', 'Ministerio de Salud', 'contacto_ms@ba.gcba.gob.ar', 'Juan', 'Gómez', '20224457894'),
    ('ME', 'Ministerio de Economía', 'contacto_me@ba.gcba.gob.ar', 'Luis', 'Martínez', '20336698233'),
    ('MT', 'Ministerio de Transporte', 'contacto_mt@ba.gcba.gob.ar', 'Ana', 'Fernández', '20393654987'),
    ('MEXT', 'Ministerio de Relaciones Exteriores', 'contacto_mrext@ba.gcba.gob.ar', 'Pilar', 'Peña', '20224457897'),
    ('MJ', 'Ministerio de Justicia', 'contacto_mj@ba.gcba.gob.ar', 'Marcos', 'Cigali', '20437697233'),
    ('MEDU', 'Ministerio de Educacion', 'contacto_medu@ba.gcba.gob.ar', 'Camila', 'Migret', '20352254357'),
    ('MD', 'Ministerio de Modernizacion', 'contacto_md@ba.gcba.gob.ar', 'Bautista', 'Pral', '20274557214'),
    ('MTCH', 'Ministerio de Tecnologia', 'contacto_mtch@ba.gcba.gob.ar', 'Pedro', 'Pino', '20314678293'),
    ('MINT', 'Ministerio de Interior', 'contacto_mint@ba.gcba.gob.ar', 'Martina', 'Perez', '20396244987'),
    ('MTR', 'Ministerio de Trabajo', 'contacto_mtr@ba.gcba.gob.ar', 'Carlos', 'Sereno', '20407654982');

-- Inserción de datos en la tabla ReferenteGCBA
INSERT INTO ReferenteGCBA (id_referente, nombre, apellido, correo_oficial, cargo, numero_contacto, id_reparticion, cantidad_proyectos)
VALUES
    ('20224457894', 'María', 'Rodríguez', 'maria.rodriguez@ba.gcba.gob.ar', 'Gerente', '0001-0001', 'MS', 5),
    ('20336698233', 'Carlos', 'López', 'carlos.lopez@ba.gcba.gob.ar', 'Director General', '0002-0002', 'ME', 7),
    ('20393654987', 'Laura', 'García', 'laura.garcia@ba.gcba.gob.ar', 'Director General', '0003-0003', 'MT', 4),
    ('20224457897', 'Fernando', 'Sánchez', 'fernando.sanchez@ba.gcba.gob.ar', 'Director', '0007-0007', 'MEXT', 5),
    ('20437697233', 'Camila', 'López', 'camila.lopez@ba.gcba.gob.ar', 'Director General', '0008-0008', 'MJ', 7),
    ('20352254357', 'Jorge', 'Fernández', 'jorge.fernandez@ba.gcba.gob.ar', 'Gerente de Proyectos', '0009-0009', 'MEDU', 5),
    ('20274557214', 'Ana', 'Gutiérrez', 'ana.gutierrez@ba.gcba.gob.ar', 'Subgerente', '0010-0010', 'MD', 3),
    ('20314678293', 'Luciano', 'Rodríguez', 'luciano.rodriguez@ba.gcba.gob.ar', 'Gerente', '0011-0011', 'MTCH', 6),
    ('20396244987', 'Julia', 'Hernández', 'julia.hernandez@ba.gcba.gob.ar', 'Director', '0012-0012', 'MINT', 4),
    ('20407654982', 'Santiago', 'Fernández', 'santiago.fernandez@ba.gcba.gob.ar', 'Subgerente', '0013-0013', 'MTR', 5);

-- Inserción de datos en la tabla Proyecto
INSERT INTO Proyecto (id_proyecto, id_reparticion, fecha_inicio, fecha_actualizacion, proveedor_desarrollo, id_referente, componentes)
VALUES
    ('P1', 'MS', '2023-01-15', '2023-10-20', 'CyS', '20224457894', 10),
    ('P2', 'ME', '2023-02-01', '2023-09-15', 'Hexacta', '20336698233', 15),
    ('P3', 'MT', '2023-03-10', '2023-12-05', 'Most', '20393654987', 8),
    ('P4', 'MEXT', '2023-04-15', '2023-11-20', 'TecnoSoft', '20224457897', 12),
    ('P5', 'MJ', '2023-05-01', '2023-10-15', 'DevTech', '20437697233', 18),
    ('P6', 'MEDU', '2023-06-10', '2023-12-05', 'CyS', '20352254357', 9),
    ('P7', 'MD', '2023-07-15', '2023-09-20', 'QuickSolutions', '20274557214', 6),
    ('P8', 'MTCH', '2023-08-01', '2023-11-15', 'Hexacta', '20314678293', 10),
    ('P9', 'MINT', '2023-09-10', '2023-12-05', 'SoftSys', '20396244987', 8),
    ('P10', 'MTR', '2023-10-15', '2023-12-20', 'MindTech', '20407654982', 5);

-- Inserción de datos en la tabla Tecnologia
INSERT INTO Tecnologia (id_tecnologia, nombre_tecnologia, version, fecha_inicio_soporte, fecha_fin_soporte, homologada, proxima_version, pipeline, imagen_rhel, url_imagen_rhel, id_proyecto)
VALUES
    (1, 'Java', '17.0', '2021-09-14', '2026-09-14', TRUE, '18.0', TRUE, 'rhel_image_1', 'https://www.example.com/image1', 'P1'),
    (2, 'PHP', '8.0', '2022-01-01', '2023-12-31', TRUE, '9.0', FALSE, 'rhel_image_2', 'https://www.example.com/image2', 'P2'),
    (3, 'ReactJs', '18.0', '2022-01-01', '2023-12-31', TRUE, '19.0', TRUE, 'rhel_image_3', 'https://www.example.com/image3', 'P3'),
    (4, 'Python', '3.9', '2020-10-20', '2025-10-20', TRUE, '3.10', TRUE, 'rhel_image_4', 'https://www.example.com/image4', 'P4'),
    (5, 'Ruby', '3.0', '2021-01-01', '2024-12-31', TRUE, '3.1', FALSE, 'rhel_image_5', 'https://www.example.com/image5', 'P5'),
    (6, 'Angular', '13.0', '2021-02-01', '2024-12-31', TRUE, '14.0', TRUE, 'rhel_image_6', 'https://www.example.com/image6', 'P6'),
    (7, 'Node.js', '16.0', '2021-03-01', '2024-12-31', TRUE, '17.0', FALSE, 'rhel_image_7', 'https://www.example.com/image7', 'P7'),
    (8, 'Java', '11.0', '2021-04-01', '2024-12-31', TRUE, '11.0', TRUE, 'rhel_image_8', 'https://www.example.com/image8', 'P8'),
    (9, 'Go', '1.18', '2021-05-01', '2024-12-31', TRUE, '1.19', FALSE, 'rhel_image_9', 'https://www.example.com/image9', 'P9'),
    (10, 'PHP', '7.4', '2020-06-01', '2022-12-31', TRUE, '5.6', TRUE, 'rhel_image_10', 'https://www.example.com/image10', 'P10');


-- Inserción de datos en la tabla Presupuesto
INSERT INTO Presupuesto (id_pliego, id_proyecto, presupuesto_asignado_2023, modalidad_contratacion, fecha_inicio_contrato, fecha_actualizacion_contrato, fecha_fin_contrato, observaciones, proveedor_desarrollo)
VALUES
    ('Pliego1', 'P1', 1000000.00, 'Contrato Directo', '2023-01-15', '2023-02-20', '2023-12-31', 'Presupuesto asignado en dólares para el proyecto P1', 'CyS'),
    ('Pliego2', 'P2', 1500000.00, 'Orden De Compra Abierta', '2023-02-01', '2023-03-15', '2023-12-31', 'Presupuesto asignado en dólares para el proyecto P2', 'Hexacta'),
    ('Pliego3', 'P3', 800000.00, 'Monotributo', '2023-03-10', '2023-04-05', '2023-12-31', 'Presupuesto asignado en dólares para el proyecto P3', 'Most'),
    ('Pliego4', 'P4', 1200000.00, 'Orden De Compra Abierta', '2023-04-15', '2023-05-20', '2023-12-31', 'Presupuesto asignado en dólares para el proyecto P4', 'TecnoSoft'),
    ('Pliego5', 'P5', 1700000.00, 'Orden De Compra Abierta', '2023-05-01', '2023-06-15', '2023-12-31', 'Presupuesto asignado en dólares para el proyecto P5', 'DevTech'),
    ('Pliego6', 'P6', 900000.00, 'Contrato Directo', '2023-06-10', '2023-07-05', '2023-12-31', 'Presupuesto asignado en dólares para el proyecto P6', 'CyS'),
    ('Pliego7', 'P7', 600000.00, 'Orden de Compra Cerrada', '2023-07-15', '2023-08-20', '2023-12-31', 'Presupuesto asignado en dólares para el proyecto P7', 'QuickSolutions'),
    ('Pliego8', 'P8', 1100000.00, 'Orden De Compra Abierta', '2023-08-01', '2023-09-15', '2023-12-31', 'Presupuesto asignado en dólares para el proyecto P8', 'Hexacta'),
    ('Pliego9', 'P9', 800000.00, 'Monotributo', '2023-09-10', '2023-10-05', '2023-12-31', 'Presupuesto asignado en dólares para el proyecto P9', 'SoftSys'),
    ('Pliego10', 'P10', 500000.00, 'Monotributo', '2023-10-15', '2023-11-20', '2023-12-31', 'Presupuesto asignado en dólares para el proyecto P10', 'MindTech');


-- Inserción de datos en la tabla ControlPagoProveedores
INSERT INTO PagoProveedores (id_pago, proveedor_desarrollo, ultimo_pago, proximo_pago, vencimiento_ultimo_pago, fecha_ultimo_pago, vencimiento_proximo_pago, adeuda, observaciones_pagos)
VALUES
    ('HASH001', 'CyS', 20040.00, 22040.00, '2023-11-15', '2023-11-12', '2023-12-15', FALSE, 'En regla con los pagos'),
    ('HASH002', 'Hexacta', 37800.00, 37450.00, '2023-11-01', '2023-11-01', '2023-12-01',  FALSE, 'En regla con los pagos'),
    ('HASH003', 'Most', 15140.00, 13140.00, '2023-11-10', '2023-11-08', '2023-12-10', FALSE, 'En regla con los pagos'),
    ('HASH004', 'TecnoSoft', 10300.00, 20300.00, '2023-11-15', '2023-11-16', '2023-12-15', TRUE, 'Esta en deuda por falta de pago total de Noviembre y atraso en el pago'),
    ('HASH005', 'DevTech', 15689.00, 18659.00, '2023-11-01', '2023-11-01', '2023-12-01', FALSE, 'En regla con los pago'),
    ('HASH006', 'CyS', 90000.00, 95060.00, '2023-11-10','2023-11-08', '2023-12-10', FALSE, 'En regla con los pago'),
    ('HASH007', 'QuickSolutions', 66403.00, 57403.00, '2023-11-15', '2023-11-14', '2023-12-15', FALSE, 'En regla con los pago'),
    ('HASH008', 'Hexacta', 14067.00, 12068.00, '2023-11-01', '2023-11-01', '2023-12-01', FALSE, 'En regla con los pago'),
    ('HASH009', 'SoftSys', 50670.00, 60670.00, '2023-11-10', '2023-11-11', '2023-12-10', TRUE, 'Esta en deuda por falta de pago total de Noviembre y atraso en el pago'),
    ('HASH0010', 'MindTech', 10890.00, 17290.00, '2023-11-15', '2023-11-13', '2023-12-15', FALSE, 'En regla con los pago');

    -- Inserción de datos en la tabla Equipo de Desarrollo
INSERT INTO DatosEquipo (id_equipo, proveedor_desarrollo, cantidad_miembros, id_proyecto)
VALUES
    ('HASHEQUIPO1', 'Cys', 6, 'P1'),
    ('HASHEQUIPO2', 'Hexacta', 6, 'P2'),
    ('HASHEQUIPO3', 'Most', 6, 'P3'),
    ('HASHEQUIPO4', 'TecnoSoft', 6, 'P4'),
    ('HASHEQUIPO5', 'DevTech', 6, 'P5'),
    ('HASHEQUIPO6', 'CyS', 6, 'P6'),
    ('HASHEQUIPO7', 'QuickSolutions', 6, 'P7'),
    ('HASHEQUIPO8', 'Hexacta', 6, 'P8'),
    ('HASHEQUIPO9', 'SoftSys', 6, 'P9'),
    ('HASHEQUIPO10', 'MindTech', 6, 'P10');

        -- Inserción de datos en la tabla Equipo de Desarrollo
INSERT INTO MiembrosEquipoDesarrollo (id_miembro, proveedor_desarrollo, nombre, apellido, edad, correo, rol, id_equipo)
VALUES
    -- CyS
    ('20383334654', 'CyS', 'Roberto', 'Gomez', 30, 'rgomez@cys.com.ar', 'Lider Desarrollo', 'HASHEQUIPO1'),
    ('20383334655', 'CyS', 'Carolina', 'Lopez', 28, 'clopez@cys.com.ar', 'Developer', 'HASHEQUIPO1'),
    ('20457754556', 'CyS', 'Diego', 'Martinez', 35, 'dmartinez@cys.com.ar', 'Developer', 'HASHEQUIPO1'),
    ('20311157557', 'CyS', 'Fernanda', 'Sanchez', 32, 'fsanchez@cys.com.ar', 'Scrum Master', 'HASHEQUIPO1'),
    ('20490015758', 'CyS', 'Laura', 'Garcia', 40, 'lgarcia@cys.com.ar', 'SRE', 'HASHEQUIPO1'),
    ('20383315759', 'CyS', 'Pablo', 'Rodriguez', 33, 'prod@cys.com.ar', 'Product Owner', 'HASHEQUIPO1'),
    
    -- Hexacta
    ('20488856654', 'Hexacta', 'Marcos', 'Aurelio', 47, 'maurelio@hexacta.com.ar', 'Lider Desarrollo', 'HASHEQUIPO2'),
    ('20488856655', 'Hexacta', 'Valentina', 'Perez', 29, 'vperez@hexacta.com.ar', 'Developer', 'HASHEQUIPO2'),
    ('20280007656', 'Hexacta', 'Lucas', 'Hernandez', 31, 'lhernandez@hexacta.com.ar', 'Developer','HASHEQUIPO2'),
    ('20488857657', 'Hexacta', 'Ana', 'Gomez', 36, 'agomez@hexacta.com.ar', 'Scrum Master','HASHEQUIPO2'),
    ('20182222658', 'Hexacta', 'Marcela', 'Diaz', 42, 'mdiaz@hexacta.com.ar', 'SRE', 'HASHEQUIPO2'),
    ('20480015759', 'Hexacta', 'Eduardo', 'Lopez', 34, 'elopez@hexacta.com.ar', 'Product Owner', 'HASHEQUIPO2'),

    -- Most
    ('20272859654', 'Most', 'Julio', 'Cesar', 26, 'jcesar@most.com.ar', 'Lider Desarrollo','HASHEQUIPO3'),
    ('20272859655', 'Most', 'Gustavo', 'Fernandez', 27, 'gfernandez@most.com.ar', 'Developer','HASHEQUIPO3'),
    ('20381305756', 'Most', 'Carla', 'Mendez', 30, 'cmendez@most.com.ar', 'Developer','HASHEQUIPO3'),
    ('20262344457', 'Most', 'Luis', 'Perez', 33, 'lperez@most.com.ar', 'Scrum Master', 'HASHEQUIPO3'),
    ('20580015758', 'Most', 'Natalia', 'Garcia', 38, 'ngarcia@most.com.ar', 'SRE', 'HASHEQUIPO3'),
    ('20211157559', 'Most', 'Santiago', 'Rojas', 35, 'srojas@most.com.ar', 'Product Owner', 'HASHEQUIPO3'),

    -- TecnoSoft
    ('20457754554', 'TecnoSoft', 'Johanna', 'Keneddy', 31, 'jkeneddy@tsoft.com.ar','Lider Desarrollo','HASHEQUIPO4'),
    ('20457754555', 'TecnoSoft', 'Camila', 'Gutierrez', 32, 'cgutierrez@tsoft.com.ar', 'Developer','HASHEQUIPO4'),
    ('20457754550', 'TecnoSoft', 'Pablo', 'Sanchez', 29, 'psanchez@tsoft.com.ar', 'Developer','HASHEQUIPO4'),
    ('20357754557', 'TecnoSoft', 'Mariana', 'Lopez', 35, 'mlopez@tsoft.com.ar', 'Scrum Master', 'HASHEQUIPO4'),
    ('20357754558', 'TecnoSoft', 'Javier', 'Martinez', 40, 'jmartinez@tsoft.com.ar', 'SRE', 'HASHEQUIPO4'),
    ('20457754559', 'TecnoSoft', 'Lorena', 'Fernandez', 36, 'lfernandez@tsoft.com.ar', 'Product Owner','HASHEQUIPO4'),

    -- DevTech
    ('20262344454', 'DevTech', 'Belen', 'Mitre', 37, 'bmitre@dtech.com.ar', 'Lider Desarrollo','HASHEQUIPO5'),
    ('20262344455', 'DevTech', 'Andres', 'Diaz', 30, 'adiaz@dtech.com.ar', 'Developer','HASHEQUIPO5'),
    ('20262344456', 'DevTech', 'Valeria', 'Rodriguez', 28, 'vrodriguez@dtech.com.ar', 'Developer','HASHEQUIPO5'),
    ('20462344457', 'DevTech', 'Federico', 'Gomez', 34, 'fgomez@dtech.com.ar', 'Scrum Master','HASHEQUIPO5'),
    ('20262344458', 'DevTech', 'Gabriela', 'Perez', 39, 'gperez@dtech.com.ar', 'SRE','HASHEQUIPO5'),
    ('20262344459', 'DevTech', 'Matias', 'Fernandez', 36, 'mfernandez@dtech.com.ar', 'Product Owner','HASHEQUIPO5'),

    -- QuickSolutions
    ('20381305704', 'QuickSolutions', 'Mariano', 'Closs', 38, 'mcloss@qs.com.ar', 'Lider Desarrollo','HASHEQUIPO7'),
    ('20381305705', 'QuickSolutions', 'Florencia', 'Gutierrez', 29, 'fgutierrez@qs.com.ar', 'Developer','HASHEQUIPO7'),
    ('20381305706', 'QuickSolutions', 'Sebastian', 'Lopez', 31, 'slopez@qs.com.ar', 'Developer','HASHEQUIPO7'),
    ('20381305707', 'QuickSolutions', 'Valeria', 'Martinez', 34, 'vmartinez@qs.com.ar', 'Scrum Master','HASHEQUIPO7'),
    ('20381305708', 'QuickSolutions', 'Luciano', 'Perez', 36, 'lperez@qs.com.ar', 'SRE','HASHEQUIPO7'),
    ('20381305709', 'QuickSolutions', 'Camila', 'Fernandez', 33, 'cfernandez@qs.com.ar', 'Product Owner','HASHEQUIPO7'),

    -- SoftSys
    ('20182222654', 'SoftSys', 'Enrique', 'Pinti', 44, 'epinti@softsys.com.ar', 'Lider Desarrollo','HASHEQUIPO9'),
    ('20182222655', 'SoftSys', 'Joaquin', 'Gonzalez', 27, 'jgonzalez@softsys.com.ar', 'Developer','HASHEQUIPO9'),
    ('20182222656', 'SoftSys', 'Ana', 'Rodriguez', 30, 'arodriguez@softsys.com.ar', 'Developer','HASHEQUIPO9'),
    ('20182222657', 'SoftSys', 'Gisela', 'Lopez', 33, 'glopez@softsys.com.ar', 'Scrum Master','HASHEQUIPO9'),
    ('20282222658', 'SoftSys', 'Martin', 'Martinez', 35, 'mmartinez@softsys.com.ar', 'SRE','HASHEQUIPO9'),
    ('20182222659', 'SoftSys', 'Rocio', 'Fernandez', 32, 'rfernandez@softsys.com.ar', 'Product Owner','HASHEQUIPO9'),

    -- MindTech
    ('20300015799', 'MindTech', 'Fausto', 'Ponzio', 39, 'fponsio@mtech.com.ar', 'Lider Desarrollo','HASHEQUIPO10'),
    ('20300015800', 'MindTech', 'Lionel', 'Sanchez', 28, 'lsanchez@mtech.com.ar', 'Developer','HASHEQUIPO10'),
    ('20300015801', 'MindTech', 'Natalia', 'Gomez', 31, 'ngomez@mtech.com.ar', 'Developer','HASHEQUIPO10'),
    ('20300015802', 'MindTech', 'Diego', 'Perez', 34, 'dperez@mtech.com.ar', 'Scrum Master','HASHEQUIPO10'),
    ('20300015803', 'MindTech', 'Carolina', 'Fernandez', 37, 'cfernandez@mtech.com.ar', 'SRE','HASHEQUIPO10'),
    ('20300015804', 'MindTech', 'Marcelo', 'Lopez', 36, 'mlopez@mtech.com.ar', 'Product Owner','HASHEQUIPO10'),

    -- CyS
    ('20273374654', 'CyS', 'Roberto', 'Patiño', 30, 'rpatiño@cys.com.ar', 'Lider Desarrollo', 'HASHEQUIPO6'),
    ('21111334655', 'CyS', 'Juanita', 'Jik', 28, 'jjik@cys.com.ar', 'Developer', 'HASHEQUIPO6'),
    ('20457732226', 'CyS', 'Pedro', 'Porro', 35, 'pporro@cys.com.ar', 'Developer', 'HASHEQUIPO6'),
    ('21111157557', 'CyS', 'Federico', 'Sancho', 32, 'fsancho@cys.com.ar', 'Scrum Master', 'HASHEQUIPO6'),
    ('20369748310', 'CyS', 'Laureano', 'Garcin', 40, 'lgarcin@cys.com.ar', 'SRE', 'HASHEQUIPO6'),
    ('20377775759', 'CyS', 'Juan', 'Hansen', 33, 'prod@cys.com.ar', 'Product Owner', 'HASHEQUIPO6'),

    -- Hexacta
    ('20056728999', 'Hexacta', 'Mark', 'Lutero', 47, 'mlutero@hexacta.com.ar', 'Lider Desarrollo', 'HASHEQUIPO8'),
    ('20484446655', 'Hexacta', 'Sandro', 'Valencia', 23, 'svalencia@hexacta.com.ar', 'Developer', 'HASHEQUIPO8'),
    ('24567891267', 'Hexacta', 'Leandro', 'Inigo', 31, 'linigo@hexacta.com.ar', 'Developer','HASHEQUIPO8'),
    ('20488857444', 'Hexacta', 'Francisco', 'Turo', 36, 'fturo@hexacta.com.ar', 'Scrum Master','HASHEQUIPO8'),
    ('20182226681', 'Hexacta', 'Micaela', 'Garrin', 32, 'mgarrin@hexacta.com.ar', 'SRE', 'HASHEQUIPO8'),
    ('20480015009', 'Hexacta', 'Jose', 'Mugica', 34, 'jmugica@hexacta.com.ar', 'Product Owner', 'HASHEQUIPO8');