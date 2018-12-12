DROP DATABASE IF EXISTS Mina;

CREATE DATABASE IF NOT EXISTS Mina
	CHARACTER SET utf8
    COLLATE utf8_general_ci;
    
USE Mina;

CREATE TABLE planta(
cod_planta int not null primary key,
presupuesto decimal not null,
gasto decimal,
empleados int not null,
gerente varchar(200),
ID_empresa int
)ENGINE=InnoDB;

CREATE TABLE empresa(
ID_empresa int not null primary key,
presupuesto_planta int not null,
nombre varchar(200),
ceo varchar(200)
)ENGINE=InnoDB;

CREATE TABLE realiza(
cod_planta int,
cod_proyecto int
)ENGINE=InnoDB;

CREATE TABLE proyecto_social(
cod_proyecto int not null primary key,
nombre varchar(200)
)ENGINE=InnoDB;

CREATE TABLE incluye(
cod_proyecto int,
cod_comunidad int
)ENGINE=InnoDB;

CREATE TABLE comunidad(
cod_comunidad int not null primary key,
nombre varchar(200)
)ENGINE=InnoDB;

CREATE TABLE empleado(
cod_empleado int not null primary key auto_increment,
nombre varchar(200) not null,
fecha_ingreso date,
cod_planta int,
cod_modulo int
)ENGINE=InnoDB;

CREATE TABLE modulo_habitacional(
cod_modulo int not null primary key,
capacidad int,
ocupado int
)ENGINE=InnoDB;

CREATE TABLE mod_temporal(
fecha_creacion date,
cod_modulo int
)ENGINE=InnoDB;

CREATE TABLE mod_permanente(
material varchar(200),
cod_modulo int
)ENGINE=InnoDB;

CREATE TABLE seguridad(
zona_trabajo varchar(200),
horario varchar(200),
cod_empleado int
)ENGINE=InnoDB;

CREATE TABLE administrativo(
horas_semanales int,
departamento varchar(200),
cod_empleado int
)ENGINE=InnoDB;

CREATE TABLE logistica(
area varchar(200),
cod_empleado int
)ENGINE=InnoDB;

CREATE TABLE temporal(
empresa varchar(200),
inicio_contrato date,
cod_empleado int
)ENGINE=InnoDB;

CREATE TABLE operario(
horas_semanales int,
cod_empleado int
)ENGINE=InnoDB;

CREATE TABLE maquinaria_pesada(
maquinaria varchar(200),
cod_empleado int
)ENGINE=InnoDB;

CREATE TABLE transportista(
categoria_licencia varchar(200),
cod_empleado int
)ENGINE=InnoDB;

CREATE TABLE mano_obra(
cod_empleado int,
equipo varchar(200),
cod_capataz int
)ENGINE=InnoDB;

CREATE TABLE capataz(
cod_capataz int not null primary key,
cod_empleado int
)ENGINE=InnoDB;

CREATE TABLE mantenimiento(
cod_empleado int,
horario varchar(200)
)ENGINE=InnoDB;

CREATE TABLE mantiene(
cod_vehiculo int,
cod_empleado int
)ENGINE=InnoDB;

CREATE TABLE conduce(
cod_empleado int,
cod_vehiculo int,
fecha date
)ENGINE=InnoDB;

CREATE TABLE soporte(
tipo varchar(200),
descripcion text,
cod_vehiculo int
)ENGINE=InnoDB;

CREATE TABLE opera(
cod_empleado int,
cod_vehiculo int,
fecha date
)ENGINE=InnoDB;

CREATE TABLE excavacion(
cargamento_maximo int,
caballos_fuerza int,
cod_vehiculo int
)ENGINE=InnoDB;

CREATE TABLE maneja(
cod_empleado int,
cod_vehiculo int,
fecha date
)ENGINE=InnoDB;

CREATE TABLE transporte(
tipo varchar(200),
capacidad int,
cod_vehiculo int
)ENGINE=InnoDB;

CREATE TABLE vehiculo(
cod_vehiculo int not null primary key,
matricula varchar(200),
peso_bruto int
)ENGINE=InnoDB;

CREATE TABLE guarda(
cod_vehiculo int,
cod_garage int
)ENGINE=InnoDB;

CREATE TABLE infraestructura(
cod_infraestructura int not null primary key,
fecha_construccion date,
cod_planta int
)ENGINE=InnoDB;

CREATE TABLE almacen(
cod_almacen int not null primary key,
capacidad int,
capadidad_ocupada int,
cod_infraestructura int
)ENGINE=InnoDB;

CREATE TABLE garage(
cod_garage int not null primary key,
capacidad int,
capacidad_reservada int,
tipo_vehiculo varchar(200),
cod_infraestructura int
)ENGINE=InnoDB;

CREATE TABLE refinadora(
cod_refinadora int not null primary key,
procesado_hora int,
producido_hora int,
energia_hora int,
cod_infraestructura int
)ENGINE=InnoDB;

CREATE TABLE mina_cielo_abierto(
cod_mina int not null primary key,
produccion_dia int,
cod_infraestructura int
)ENGINE=InnoDB;

CREATE TABLE suministros(
cod_almacen int,
tipo varchar(200),
ultimo_inventariado date
)ENGINE=InnoDB;

CREATE TABLE mineral(
cod_almacen int,
mineral varchar(200)
)ENGINE=InnoDB;

CREATE TABLE metal(
cod_almacen int,
metal varchar(200)
)ENGINE=InnoDB;

ALTER TABLE planta
ADD FOREIGN KEY planta_empresa(ID_empresa)
REFERENCES empresa(ID_empresa)
ON UPDATE CASCADE;

ALTER TABLE empleado
ADD FOREIGN KEY empleado_planta(cod_planta)
REFERENCES planta(cod_planta)
ON UPDATE CASCADE;

ALTER TABLE empleado
ADD FOREIGN KEY empleado_modulo(cod_modulo)
REFERENCES modulo_habitacional(cod_modulo)
ON UPDATE CASCADE;

ALTER TABLE mod_temporal
ADD FOREIGN KEY mod_temporal_modulo(cod_modulo)
REFERENCES modulo_habitacional(cod_modulo)
ON UPDATE CASCADE;

ALTER TABLE mod_permanente
ADD FOREIGN KEY mod_permanente_modulo(cod_modulo)
REFERENCES modulo_habitacional(cod_modulo)
ON UPDATE CASCADE;

ALTER TABLE seguridad
ADD FOREIGN KEY seguridad_cod_empleado(cod_empleado)
REFERENCES empleado(cod_empleado)
ON UPDATE CASCADE;

ALTER TABLE administrativo
ADD FOREIGN KEY administrativo_cod_empleado(cod_empleado)
REFERENCES empleado(cod_empleado)
ON UPDATE CASCADE;

ALTER TABLE logistica
ADD FOREIGN KEY logistica_cod_empleado(cod_empleado)
REFERENCES empleado(cod_empleado)
ON UPDATE CASCADE;

ALTER TABLE temporal
ADD FOREIGN KEY temporal_cod_empleado(cod_empleado)
REFERENCES empleado(cod_empleado)
ON UPDATE CASCADE;

ALTER TABLE operario
ADD FOREIGN KEY operario_cod_empleado(cod_empleado)
REFERENCES empleado(cod_empleado)
ON UPDATE CASCADE;

ALTER TABLE maquinaria_pesada
ADD FOREIGN KEY maquinaria_pesada_cod_empleado(cod_empleado)
REFERENCES operario(cod_empleado)
ON UPDATE CASCADE;

ALTER TABLE transportista
ADD FOREIGN KEY transportista_cod_empleado(cod_empleado)
REFERENCES operario(cod_empleado)
ON UPDATE CASCADE;

ALTER TABLE mano_obra
ADD FOREIGN KEY mano_obra_cod_empleado(cod_empleado)
REFERENCES operario(cod_empleado)
ON UPDATE CASCADE;

ALTER TABLE mano_obra
ADD FOREIGN KEY mano_obra_capataz(cod_capataz)
REFERENCES capataz(cod_capataz)
ON UPDATE CASCADE;

ALTER TABLE capataz
ADD FOREIGN KEY capataz_cod_empleado(cod_empleado)
REFERENCES operario(cod_empleado)
ON UPDATE CASCADE;

ALTER TABLE mantenimiento
ADD FOREIGN KEY mantenimiento_cod_empleado(cod_empleado)
REFERENCES operario(cod_empleado)
ON UPDATE CASCADE;

ALTER TABLE infraestructura
ADD FOREIGN KEY infraestructura_planta(cod_planta)
REFERENCES planta(cod_planta)
ON UPDATE CASCADE;

ALTER TABLE refinadora
ADD FOREIGN KEY refinadora_infraestructura(cod_infraestructura)
REFERENCES infraestructura(cod_infraestructura)
ON UPDATE CASCADE;

ALTER TABLE mina_cielo_abierto
ADD FOREIGN KEY mina_infraestructura(cod_infraestructura)
REFERENCES infraestructura(cod_infraestructura)
ON UPDATE CASCADE;

ALTER TABLE almacen
ADD FOREIGN KEY almacen_infraestructura(cod_infraestructura)
REFERENCES infraestructura(cod_infraestructura)
ON UPDATE CASCADE;

ALTER TABLE suministros
ADD FOREIGN KEY suministros_almacen(cod_almacen)
REFERENCES almacen(cod_almacen)
ON UPDATE CASCADE;

ALTER TABLE mineral
ADD FOREIGN KEY mineral_almacen(cod_almacen)
REFERENCES almacen(cod_almacen)
ON UPDATE CASCADE;

ALTER TABLE metal
ADD FOREIGN KEY metal_almacen(cod_almacen)
REFERENCES almacen(cod_almacen)
ON UPDATE CASCADE;

ALTER TABLE garage
ADD FOREIGN KEY garage_infraestructura(cod_infraestructura)
REFERENCES infraestructura(cod_infraestructura)
ON UPDATE CASCADE;

ALTER TABLE guarda
ADD FOREIGN KEY guarda_garage(cod_garage)
REFERENCES garage(cod_garage)
ON UPDATE CASCADE;

ALTER TABLE guarda
ADD FOREIGN KEY guarda_vehiculo(cod_vehiculo)
REFERENCES vehiculo(cod_vehiculo)
ON UPDATE CASCADE;

ALTER TABLE soporte
ADD FOREIGN KEY soporte_vehiculo(cod_vehiculo)
REFERENCES vehiculo(cod_vehiculo)
ON UPDATE CASCADE;

ALTER TABLE excavacion
ADD FOREIGN KEY excavacion_vehiculo(cod_vehiculo)
REFERENCES vehiculo(cod_vehiculo)
ON UPDATE CASCADE;

ALTER TABLE transporte
ADD FOREIGN KEY transporte_vehiculo(cod_vehiculo)
REFERENCES vehiculo(cod_vehiculo)
ON UPDATE CASCADE;

ALTER TABLE conduce
ADD FOREIGN KEY conduce_cod_empleado(cod_empleado)
REFERENCES temporal(cod_empleado)
ON UPDATE CASCADE;

ALTER TABLE conduce
ADD FOREIGN KEY conduce_vehiculo(cod_vehiculo)
REFERENCES vehiculo(cod_vehiculo)
ON UPDATE CASCADE;

ALTER TABLE opera
ADD FOREIGN KEY opera_cod_empleado(cod_empleado)
REFERENCES maquinaria_pesada(cod_empleado)
ON UPDATE CASCADE;

ALTER TABLE opera
ADD FOREIGN KEY opera_vehiculo(cod_vehiculo)
REFERENCES vehiculo(cod_vehiculo)
ON UPDATE CASCADE;

ALTER TABLE maneja
ADD FOREIGN KEY maneja_cod_empleado(cod_empleado)
REFERENCES transportista(cod_empleado)
ON UPDATE CASCADE;

ALTER TABLE maneja
ADD FOREIGN KEY maneja_vehiculo(cod_vehiculo)
REFERENCES vehiculo(cod_vehiculo)
ON UPDATE CASCADE;

ALTER TABLE mantiene
ADD FOREIGN KEY mantiene_cod_empleado(cod_empleado)
REFERENCES mantenimiento(cod_empleado)
ON UPDATE CASCADE;

ALTER TABLE mantiene
ADD FOREIGN KEY mantiene_vehiculo(cod_vehiculo)
REFERENCES vehiculo(cod_vehiculo)
ON UPDATE CASCADE;