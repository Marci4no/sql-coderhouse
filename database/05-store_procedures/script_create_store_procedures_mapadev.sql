-- Se crea SP que permite ordenar los campos de una tabla de forma descendente o ascendente.
-- Para utilizarlo correctamente, se deben modificar dentro del IF los campos de ordenamiento que quieras utilizar y en el SET del @query hay que seleccionar de que tabla serian esos campos de ordenamiento.
-- En la llamada CALL, se le debe indicar por que campo de ordenamiento queres evaluar y luego cual seria el orden (asc o desc).

DELIMITER //
CREATE PROCEDURE OrdenarTabla(
    IN campo_ordenamiento VARCHAR(50),
    IN tipo_orden VARCHAR(10)
)
BEGIN
    DECLARE orden VARCHAR(10);

    IF tipo_orden = 'asc' THEN
        SET orden = 'ASC';
    ELSE
        SET orden = 'DESC';
    END IF;

    IF campo_ordenamiento = 'id_reparticion' OR campo_ordenamiento = 'ministerio' OR campo_ordenamiento = 'contacto' OR campo_ordenamiento = 'nombre_funcionario' OR campo_ordenamiento = 'apellido_funcionario' OR campo_ordenamiento = 'id_referente' THEN
        SET @query = CONCAT('SELECT * FROM Reparticion ORDER BY ', campo_ordenamiento, ' ', orden, ';');
        PREPARE stmt FROM @query;
        EXECUTE stmt;
        DEALLOCATE PREPARE stmt;
    ELSE
        SELECT 'Campo de ordenamiento inválido' AS Resultado;
    END IF;
END //

DELIMITER ;

CALL OrdenarTabla('ministerio', 'desc');


-- Se crea un segundo SP que permite insertar datos en una tabla, en este caso, en la tabla Reparticion.
-- Se indican los parametros de entrada y en la llamada CALL se indican los valores a agregar.
-- Se le indica un parametro de salida estilo OUTPUT que muestra el detalle de lo que se ha agregado, el cual podria enviarse a una tabla de auditoria a posterior.

DELIMITER //
CREATE PROCEDURE InsertarEnReparticion(
    IN id_reparticion_param VARCHAR(30),
    IN ministerio_param VARCHAR(100),
    IN contacto_param VARCHAR(50),
    IN nombre_funcionario_param VARCHAR(50),
    IN apellido_funcionario_param VARCHAR(50),
    IN id_referente_param VARCHAR(50),
    OUT detalle_nueva_fila VARCHAR(255)
)
BEGIN
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        SET detalle_nueva_fila = 'Error al insertar la fila';
    END;

    INSERT INTO Reparticion (
        id_reparticion, ministerio, contacto, nombre_funcionario, apellido_funcionario, id_referente
    ) VALUES (
        id_reparticion_param, ministerio_param, contacto_param, nombre_funcionario_param, apellido_funcionario_param, id_referente_param
    );

    SELECT CONCAT('Nueva fila insertada: id_reparticion=', id_reparticion_param, ', ministerio=', ministerio_param, ', contacto=', contacto_param, ', nombre_funcionario=', nombre_funcionario_param, ', apellido_funcionario=', apellido_funcionario_param, ', id_referente=', id_referente_param) INTO detalle_nueva_fila;
END //
DELIMITER ;

CALL InsertarEnReparticion('MS3', 'Ministerio de Educación', 'contacto_ms3@ba.gcba.gob.ar', 'Laura', 'Perez', '20224452222', @detalle);
SELECT @detalle;