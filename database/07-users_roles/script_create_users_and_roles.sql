-- Creo el usuario de solo lectura si no existe
CREATE USER IF NOT EXISTS 'readuser'@'localhost' IDENTIFIED BY 'readonly1!';

-- Asigno permisos de solo lectura a todas las tablas
GRANT SELECT ON mapa_aplicaciones_dev.* TO 'readuser'@'localhost';

-- No permito eliminación de registros
REVOKE DELETE ON mapa_aplicaciones_dev.* FROM 'readuser'@'localhost';

-- Creo usuario con permisos de lectura, inserción y modificación
CREATE USER IF NOT EXISTS 'edituser'@'localhost' IDENTIFIED BY 'ubdate1!';

-- Asigno permisos de lectura, inserción y modificación a todas las tablas
GRANT SELECT, INSERT, UPDATE ON mapa_aplicaciones_dev.* TO 'edituser'@'localhost';

-- No permito eliminación de registros
REVOKE DELETE ON mapa_aplicaciones_dev.* FROM 'edituser'@'localhost'