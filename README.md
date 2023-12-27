# SQL - CODERHOUSE

## DB Mapa de aplicaciones

Base de datos dedicada a la auditoría, relevamiento y control de información de los diferentes proyectos del Gobierno de la Ciudad de Buenos Aires.

### Tecnologías utilizadas

- MySql 8.0
- MySql Server 8.0
- MySql Workbench 8.0 CE
- Mysql Router 8.0

## Tablas

Se han desarrollado 8 tablas:

1. Reparticion
2. Referentes GCBA
3. Tecnologia
4. Proyecto
5. Presupuesto
6. Pago a Proveedores
7. Datos de los Equipos de Desarrollo
8. Miembros de los Equipos de Desarrollo

Adicionalmente, se crearán 2 tablas de Logs en la creación de Triggers.

Para crear el schema, las tablas, las PK y FK, ejecutar el script `script_mapa_aplicaciones_dev.sql`.

## Inserción de Datos Iniciales

Para la inserción de datos iniciales, ejecutar el script `script_insersion_datos.sql`.

## Vistas

Se desarrollaron 5 vistas:

1. Detalles de Proyectos y Tecnologías: Muestra un detalle de en qué tecnología está desarrollado cada proyecto.
2. Resumen de Presupuestos: Muestra un detalle de todos los presupuestos.
3. Tecnologías Homologadas: Muestra las tecnologías homologadas.
4. Proyectos por Referente GCBA: Muestra los agentes asignados a cada proyecto, los referentes.
5. Presupuestos por Ministerio: Muestra un detalle de los presupuestos de cada ministerio.

Para la creación de views, ejecutar el script `script_viewsa_mapadev.sql`.

## Funciones

Se han desarrollado dos funciones:

1. Función para buscar cuántos proyectos tiene cada ministerio.
2. Función para conseguir el presupuesto asignado de cada proyecto.

Para la creación de functions, ejecutar el script `script_create_functions_mapadev.sql`.

## Procedimientos Almacenados

Se han desarrollado 2 procedimientos almacenados:

1. SP que permite ordenar los campos de una tabla de forma descendente o ascendente.
2. SP que permite insertar datos en una tabla, en este caso, en la tabla Reparticion.

Para la creación de store procedures, ejecutar el script `script_create_store_procedures_mapadev.sql`.

## Triggers

Se desarrollaron 4 triggers:

1. Trigger BEFORE para Proyecto
2. Trigger AFTER para Proyecto
3. Trigger BEFORE para Presupuesto
4. Trigger AFTER para Presupuesto

Para la creación de triggers, ejecutar el script `script_create_triggers_mapadev.sql`.

## Usuarios y Roles

Para la creación de usuarios y la asignación de permisos, ejecutar el script `script_create_users_and_roles.sql`.

Repositorio dedicado al curso de SQL de coderhouse. Creado por Franco Carbone en octubre de 2023.

## TCL

Para visualizar un ejemplo de transacción con sentencias rollback, commit y savepoint, ejecutar el script `script_tcl.sql`.

## Backup

Para importar el dump del schema mapa_aplicaciones_dev, ejecutar el script `mapa_dev26122023.sql`.
