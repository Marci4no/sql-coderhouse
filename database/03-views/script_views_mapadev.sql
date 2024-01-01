-- Vista 1: Detalles de Proyectos y Tecnologías
CREATE OR REPLACE VIEW VistaProyectosTecnologias AS
SELECT
    P.id_proyecto,
    P.fecha_inicio,
    P.fecha_actualizacion,
    P.proveedor_desarrollo,
    T.nombre_tecnologia,
    T.version,
    T.fecha_inicio_soporte,
    T.fecha_fin_soporte
FROM
    Proyecto P
JOIN Tecnologia T ON P.id_proyecto = T.id_proyecto;

-- Vista 2: Resumen de Presupuestos
CREATE OR REPLACE VIEW VistaResumenPresupuestos AS
SELECT
    P.id_proyecto,
    P.presupuesto_asignado_2023,
    P.modalidad_contratacion,
    P.fecha_inicio_contrato,
    P.fecha_fin_contrato,
    R.ministerio,
    R.nombre_funcionario AS nombre_referente,
    RG.nombre AS nombre_referente_gcba
FROM
    Presupuesto P
JOIN Proyecto PR ON P.id_proyecto = PR.id_proyecto
JOIN Reparticion R ON PR.id_reparticion = R.id_reparticion
JOIN ReferenteGCBA RG ON PR.id_referente = RG.id_referente;

-- Vista 3: Tecnologías Homologadas
CREATE OR REPLACE VIEW VistaTecnologiasHomologadas AS
SELECT
    id_tecnologia,
    nombre_tecnologia,
    version,
    fecha_inicio_soporte,
    fecha_fin_soporte
FROM
    Tecnologia
WHERE
    homologada = TRUE;

-- Vista 4: Proyectos por Referente GCBA
CREATE OR REPLACE VIEW VistaProyectosReferenteGCBA AS
SELECT
    RG.id_referente,
    RG.nombre,
    RG.apellido,
    P.id_proyecto,
    P.fecha_inicio,
    P.fecha_actualizacion,
    P.proveedor_desarrollo
FROM
    ReferenteGCBA RG
    JOIN Proyecto P ON RG.id_referente = P.id_referente;

-- Vista 5: Presupuestos por Ministerio
CREATE OR REPLACE VIEW VistaPresupuestosMinisterio AS
SELECT
    R.ministerio,
    P.id_pliego,
    P.presupuesto_asignado_2023,
    P.modalidad_contratacion,
    P.fecha_inicio_contrato,
    P.fecha_fin_contrato
FROM
    Presupuesto P
    JOIN Proyecto PR ON P.id_proyecto = PR.id_proyecto
    JOIN Reparticion R ON PR.id_reparticion = R.id_reparticion;