### SQL - CODERHOUSE ###

DB Mapa de aplicaciones

Base de datos dedicada a la auditoria, relevamiento y control de informacion de los diferentes proyectos del Gobierno de la Ciudad de Buenos Aires.

Teconologías utilizadas

MySql 8.0
MySql Server 8.0
MySql Workbench 8.0 CE
Mysql Router 8.0

## Tablas ##
Se han desarrollado 5 tablas
1- Reparticion
2- Referentes GCBA
3- Tecnologia
4- Proyecto
5- Presupuesto

Para crear el schema, las tablas, las PK y FK, ejecutar el script script_mapa_aplicaciones_dev.sql

## Insersion de Datos Iniciales ##

Para la insersion de datos iniciales, ejecutar el script script_insersion_datos.sql

## Vistas ##

Se desarrollaron 5 vistas
1- Detalles de Proyectos y Tecnologías -> Muestra un detalle de en que tecnologia esta desarrollado cada proyecto.
2- Resumen de Presupuestos -> Muestra un detalle de todos los presupuestos
3- Tecnologías Homologadas -> Muestra las tecnologias homologadas.
4- Proyectos por Referente GCBA -> Muestra los agentes asignados a cada proyecto, los referentes.
5- Presupuestos por Ministerio -> Muestra un detalle de los presupuestos de cada ministerio

Para la creacion de views, ejecutar el script script_viewsa_mapadev.sql

## Funciones ##

Se han desarrollado dos funciones
1- Funcion para buscar cuantos proyectos tiene cada ministerio
2-Funcion para conseguir el presupuesto asignado de cada proyecto

Para la creacion de functions, ejecutar el script script_create_functions_mapadev.sql

## Procedimientos Almacenados ##

Se han desarrollado 2 procedimientos almacenados
1- SP que permite ordenar los campos de una tabla de forma descendente o ascendente.
2- SP que permite insertar datos en una tabla, en este caso, en la tabla Reparticion.

Para la creacion de store procedures, ejecutar el script script_create_store_procedures_mapadev.sql

## Triggers

Se desarollaron 4 triggers
1- Trigger BEFORE para Proyecto
2- Trigger AFTER para Proyecto
3- Trigger BEFORE para Presupuesto
4- Trigger AFTER para Presupuesto

Para la creacion de triggers, ejecutar el script script_create_triggers_mapadev.sql

## Usuarios y Roles ##

Para la creacion de usuarios y la asignacion de permisos, ejecutar el script script_create_users_and_roles.sql

Repositorio dedicado al curso de SQL de coderhouse
Creado por Franco Carbone
Octubre 2023
