-- Crear el SCHEMA mapa_aplicaciones_dev si no existe
CREATE SCHEMA IF NOT EXISTS mapa_aplicaciones_dev;

-- Usar el schema mapa_aplicaciones_dev
USE mapa_aplicaciones_dev;

-- Creación de la tabla Reparticion si no existe
CREATE TABLE IF NOT EXISTS Reparticion (
    id_reparticion VARCHAR(30) NOT NULL,
    ministerio VARCHAR(100) NOT NULL,
    contacto VARCHAR(50) NOT NULL,
    nombre_funcionario VARCHAR(50) NOT NULL,
    apellido_funcionario VARCHAR(50) NOT NULL,
    id_referente VARCHAR(50) NOT NULL,
    PRIMARY KEY (id_reparticion)
);

-- Creación de la tabla ReferenteGCBA si no existe
CREATE TABLE IF NOT EXISTS ReferenteGCBA (
    id_referente VARCHAR(30) NOT NULL,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    correo_oficial VARCHAR(50) NOT NULL,
    cargo VARCHAR(50) NOT NULL,
    numero_contacto VARCHAR(10) NOT NULL,
    id_reparticion VARCHAR(50) NOT NULL,
    cantidad_proyectos INT(50),
    PRIMARY KEY (id_referente)
);

-- Creación de la tabla Tecnologia si no existe
CREATE TABLE IF NOT EXISTS Tecnologia (
    id_tecnologia VARCHAR(30) NOT NULL,
    nombre_tecnologia VARCHAR(50) NOT NULL,
    version VARCHAR(50) NOT NULL,
    fecha_inicio_soporte DATE NOT NULL,
    fecha_fin_soporte DATE NOT NULL,
    homologada BOOLEAN NOT NULL,
    proxima_version VARCHAR(50) NOT NULL,
    pipeline BOOLEAN NOT NULL,
    imagen_rhel VARCHAR(50) NOT NULL,
    url_imagen_rhel VARCHAR(255),
    id_proyecto VARCHAR(50) NOT NULL,
    PRIMARY KEY (id_tecnologia)
);

-- Creación de la tabla Proyecto si no existe
CREATE TABLE IF NOT EXISTS Proyecto (
    id_proyecto VARCHAR(50) NOT NULL,
    id_reparticion VARCHAR(50) NOT NULL,
    fecha_inicio DATE NOT NULL,
    fecha_actualizacion DATE NOT NULL,
    proveedor_desarrollo VARCHAR(50) NOT NULL,
    id_referente VARCHAR(50) NOT NULL,
    componentes INT(50),
    PRIMARY KEY (id_proyecto)
);

-- Creación de la tabla Presupuesto si no existe
CREATE TABLE IF NOT EXISTS Presupuesto (
    id_pliego VARCHAR(50) NOT NULL,
    id_proyecto VARCHAR(50) NOT NULL,
    presupuesto_asignado_2023 VARCHAR(100) NOT NULL,
    modalidad_contratacion VARCHAR(100) NOT NULL,
    fecha_inicio_contrato DATE NOT NULL,
    fecha_actualizacion_contrato DATE NOT NULL,
    fecha_fin_contrato DATE NOT NULL,
    observaciones VARCHAR(300) NOT NULL,
    proveedor_desarrollo VARCHAR(50) NOT NULL,
    PRIMARY KEY (id_pliego)
);

-- -- Agregado de FK
-- -- FK para la tabla Proyecto
ALTER TABLE Proyecto
ADD FOREIGN KEY (id_reparticion) REFERENCES Reparticion(id_reparticion);

ALTER TABLE Proyecto
ADD FOREIGN KEY (id_referente) REFERENCES ReferenteGCBA(id_referente);

-- FK para la tabla Presupuesto
ALTER TABLE Presupuesto
ADD FOREIGN KEY (id_proyecto) REFERENCES Proyecto(id_proyecto);

-- FK para la tabla ReferenteGCBA
ALTER TABLE ReferenteGCBA
ADD FOREIGN KEY (id_reparticion) REFERENCES Reparticion(id_reparticion);

-- FK para la tabla Tecnologia
ALTER TABLE Tecnologia
ADD FOREIGN KEY (id_proyecto) REFERENCES Proyecto(id_proyecto);