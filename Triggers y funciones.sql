USE mina;

#-----------------------TRIGGERS---------------------------

DROP TRIGGER IF EXISTS nuevo_empleado_planta;

DELIMITER //

CREATE TRIGGER nuevo_empleado_planta AFTER INSERT ON empleado
FOR EACH ROW
BEGIN
	UPDATE planta SET gasto = gasto + 20000 WHERE cod_planta = NEW.cod_planta;
    UPDATE planta SET empleados = empleados + 1 WHERE cod_planta = NEW.cod_planta;
    UPDATE modulo_habitacional SET ocupado = ocupado + 1  WHERE cod_modulo = NEW.cod_modulo;
END //
DELIMITER ;




DROP TRIGGER IF EXISTS nuevo_proyecto_gasto;

DELIMITER //

CREATE TRIGGER nuevo_proyecto_gasto AFTER INSERT ON realiza
FOR EACH ROW
BEGIN
	UPDATE planta SET gasto = gasto + 100000 WHERE cod_planta = NEW.cod_planta;
END //
DELIMITER ;



DROP TRIGGER IF EXISTS nuevo_guarda;

DELIMITER //

CREATE TRIGGER nuevo_guarda AFTER INSERT ON guarda
FOR EACH ROW
BEGIN
	UPDATE garage SET capacidad_reservada = capacidad_reservada + 1  WHERE cod_garage = NEW.cod_garage;
END //
DELIMITER ;


#------------------PROCEDURES-------------------------


DROP PROCEDURE IF EXISTS nuevo_empleado

DELIMITER //
CREATE PROCEDURE nuevo_empleado(IN empleadonombre VARCHAR(200), IN codplanta INT, IN codmodulo INT)
BEGIN
	START TRANSACTION;
    INSERT INTO empleado VALUES(null, empleadonombre, now(), codplanta, codmodulo);
	COMMIT;
END //
DELIMITER ;




DROP PROCEDURE IF EXISTS nuevo_proyecto

DELIMITER //
CREATE PROCEDURE nuevo_proyecto(IN codproyecto INT, IN pro VARCHAR(200), IN planta INT)
BEGIN
	START TRANSACTION;
    INSERT INTO proyecto_social VALUES(codproyecto, pro);
    INSERT INTO realiza VALUES(planta, codproyecto);
COMMIT;
END //
DELIMITER ;




DROP PROCEDURE IF EXISTS nuevo_soporte

DELIMITER //
CREATE PROCEDURE nuevo_soporte(IN tip VARCHAR(200), IN descrip TEXT, IN codvehiculo INT, IN matr VARCHAR(200), IN pesob INT)
BEGIN
	START TRANSACTION;
    INSERT INTO vehiculo VALUES(codvehiculo, matr, pesob);
    INSERT INTO soporte VALUES(tip, descrip, codvehiculo);
COMMIT;
END //
DELIMITER ;




DROP PROCEDURE IF EXISTS nuevo_excavacion

DELIMITER //
CREATE PROCEDURE nuevo_excavacion(IN cargmax INT, IN cabfuerza INT, IN codv INT, IN matr VARCHAR(200), IN pesob INT)
BEGIN
	START TRANSACTION;
    INSERT INTO vehiculo VALUES(codv, matr, pesob);
    INSERT INTO excavacion VALUES(cargmax, cabfuerza, codv);
    IF cargmax<10000 || cabfuerza<1600 THEN
		select 'Vehiculo no apto para excavacion';
        ROLLBACK;
	END IF;
COMMIT;
END //
DELIMITER ;




DROP PROCEDURE IF EXISTS transporte_pequeño

DELIMITER //
CREATE PROCEDURE transporte_pequeño(IN tip VARCHAR(200), IN cap INT, IN codv INT, IN matr VARCHAR(200), IN pesob INT)
BEGIN
	START TRANSACTION;
    INSERT INTO vehiculo VALUES(codv, matr, pesob);
    INSERT INTO transporte VALUES(tip, cap, codv);
    IF tipo!='pequeño'  THEN
		select 'Vehiculo no apto para transporte pequeño';
        ROLLBACK;
	END IF;
    IF cap<4  THEN
		select 'Vehiculo no apto para transporte pequeño';
        ROLLBACK;
	END IF;
COMMIT;
END //
DELIMITER ;



DROP PROCEDURE IF EXISTS transporte_mediano

DELIMITER //
CREATE PROCEDURE transporte_mediano(IN tip VARCHAR(200), IN cap INT, IN codv INT, IN matr VARCHAR(200), IN pesob INT)
BEGIN
	START TRANSACTION;
    INSERT INTO vehiculo VALUES(codv, matr, pesob);
    INSERT INTO transporte VALUES(tip, cap, codv);
    IF tipo!='mediano'  THEN
		select 'Vehiculo no apto para transporte mediano';
        ROLLBACK;
	END IF;
    IF cap<12  THEN
		select 'Vehiculo no apto para transporte mediano';
        ROLLBACK;
	END IF;
COMMIT;
END //
DELIMITER ;




DROP PROCEDURE IF EXISTS transporte_grande

DELIMITER //
CREATE PROCEDURE transporte_grande(IN tip VARCHAR(200), IN cap INT, IN codv INT, IN matr VARCHAR(200), IN pesob INT)
BEGIN
	START TRANSACTION;
    INSERT INTO vehiculo VALUES(codvehiculo, matr, pesob);
    INSERT INTO transporte VALUES(tip, cap, codv);
    IF tipo!='grande'  THEN
		select 'Vehiculo no apto para transporte grande';
        ROLLBACK;
	END IF;
    IF cap<26  THEN
		select 'Vehiculo no apto para transporte grande';
        ROLLBACK;
	END IF;
COMMIT;
END //
DELIMITER ;




DROP PROCEDURE IF EXISTS nuevo_guarda

DELIMITER //
CREATE PROCEDURE nuevo_guarda(IN codv INT, IN codg INT)
BEGIN
	START TRANSACTION;
    INSERT INTO guarda VALUES(codv, codg);
    UPDATE garage SET capacidad_reservada = capacidad_reservada + 1 WHERE codg = cod_garage;
    IF capacidad_reservada>capacidad  THEN
		select 'Garage lleno';
        ROLLBACK;
	END IF;
COMMIT;
END //
DELIMITER ;



DROP PROCEDURE IF EXISTS nuevo_transportista

DELIMITER //
CREATE PROCEDURE nuevo_transportista(IN cat VARCHAR(200), IN codemp INT)
BEGIN
	START TRANSACTION;
    INSERT INTO transportista VALUES(cat, codemp);
    IF cat!='A-2' || cat!='A-3'  THEN
		select 'Licencia insuficiente';
        ROLLBACK;
	END IF;
COMMIT;
END //
DELIMITER ;





DROP PROCEDURE IF EXISTS empleados_modulo;

DELIMITER $$

CREATE PROCEDURE empleados_modulo()
BEGIN
	SELECT e.cod_empleado, e.nombre, h.cod_modulo, h.capacidad, h.ocupado
    FROM
    mina.empleado e INNER JOIN
    modulo_habitacional h ON e.cod_modulo = h.cod_modulo;
END $$

DELIMITER ;




DROP PROCEDURE IF EXISTS vehiculos_garage;

DELIMITER $$

CREATE PROCEDURE vehiculos_garage()
BEGIN
	SELECT v.cod_vehiculo, ga.cod_garage, ga.capacidad, ga.capacidad_reservada, ga.tipo_vehiculo
    FROM
    mina.vehiculo v 
    INNER JOIN guarda gu ON v.cod_vehiculo = gu.cod_vehiculo
    INNER JOIN garage ga ON gu.cod_garage = ga.cod_garage;
END $$
