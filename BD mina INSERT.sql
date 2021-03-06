USE mina;

INSERT INTO empresa VALUES (01, 100000000, 'Surmin', 'Robert Smith');

INSERT INTO planta VALUES (0101, 10000000, 0, 0, 'Javier Diaz', 001);

INSERT INTO proyecto_social VALUES (10100, 'Creacion escuelas');
INSERT INTO proyecto_social VALUES (10101, 'Agua potable');
INSERT INTO proyecto_social VALUES (10102, 'Alumbrado publico');
INSERT INTO proyecto_social VALUES (10103, 'Alcantarillado');
INSERT INTO proyecto_social VALUES (10104, 'Carreteras');
INSERT INTO proyecto_social VALUES (10105, 'Parques y recreacion');
INSERT INTO proyecto_social VALUES (10106, 'Renovacion infraestructura');
INSERT INTO proyecto_social VALUES (10107, 'Becas estudiantes');
INSERT INTO proyecto_social VALUES (10108, 'Capacitacion para trabajadores');

INSERT INTO comunidad VALUES (04130, 'Matarani');
INSERT INTO comunidad VALUES (04020, 'Mollendo');
INSERT INTO comunidad VALUES (04210, 'Mejia');
INSERT INTO comunidad VALUES (04820, 'La curva');
INSERT INTO comunidad VALUES (04350, 'Cocachacra');
INSERT INTO comunidad VALUES (04640, 'Chucarapi');

INSERT INTO realiza VALUES (0101, 10100);
INSERT INTO realiza VALUES (0101, 10101);
INSERT INTO realiza VALUES (0101, 10102);
INSERT INTO realiza VALUES (0101, 10103);
INSERT INTO realiza VALUES (0101, 10104);
INSERT INTO realiza VALUES (0101, 10105);
INSERT INTO realiza VALUES (0101, 10106);
INSERT INTO realiza VALUES (0101, 10107);
INSERT INTO realiza VALUES (0101, 10108);

INSERT INTO incluye VALUES (10100, 04020);
INSERT INTO incluye VALUES (10100, 04210);
INSERT INTO incluye VALUES (10100, 04130);
INSERT INTO incluye VALUES (10100, 04020);
INSERT INTO incluye VALUES (10100, 04020);
INSERT INTO incluye VALUES (10100, 04350);
INSERT INTO incluye VALUES (10100, 04020);
INSERT INTO incluye VALUES (10100, 04820);
INSERT INTO incluye VALUES (10100, 04820);

INSERT INTO modulo_habitacional VALUES (6001, 20, 0);
INSERT INTO modulo_habitacional VALUES (6002, 15, 0);
INSERT INTO modulo_habitacional VALUES (6003, 5, 0);
INSERT INTO modulo_habitacional VALUES (6004, 5, 0);
INSERT INTO modulo_habitacional VALUES (6005, 30, 0);
INSERT INTO modulo_habitacional VALUES (6006, 15, 0);
INSERT INTO modulo_habitacional VALUES (6007, 20, 0);
INSERT INTO modulo_habitacional VALUES (6008, 20, 0);
INSERT INTO modulo_habitacional VALUES (6009, 30, 0);
INSERT INTO modulo_habitacional VALUES (6010, 5, 0);
INSERT INTO modulo_habitacional VALUES (6011, 10, 0);
INSERT INTO modulo_habitacional VALUES (6012, 10, 0);
INSERT INTO modulo_habitacional VALUES (6013, 15, 0);
INSERT INTO modulo_habitacional VALUES (6014, 20, 0);
INSERT INTO modulo_habitacional VALUES (6015, 10, 0);
INSERT INTO modulo_habitacional VALUES (6016, 10, 0);
INSERT INTO modulo_habitacional VALUES (6017, 25, 0);
INSERT INTO modulo_habitacional VALUES (6018, 30, 0);
INSERT INTO modulo_habitacional VALUES (6019, 30, 0);
INSERT INTO modulo_habitacional VALUES (6020, 10, 0);
INSERT INTO modulo_habitacional VALUES (6021, 15, 0);

INSERT INTO mod_temporal VALUES (now(), 6001);
INSERT INTO mod_temporal VALUES (now(), 6002);
INSERT INTO mod_temporal VALUES (now(), 6003);
INSERT INTO mod_temporal VALUES (now(), 6004);
INSERT INTO mod_temporal VALUES (now(), 6005);
INSERT INTO mod_temporal VALUES (now(), 6006);
INSERT INTO mod_temporal VALUES (now(), 6007);
INSERT INTO mod_temporal VALUES (now(), 6008);
INSERT INTO mod_temporal VALUES (now(), 6009);
INSERT INTO mod_temporal VALUES (now(), 6010);
INSERT INTO mod_temporal VALUES (now(), 6011);
INSERT INTO mod_temporal VALUES (now(), 6012);
INSERT INTO mod_temporal VALUES (now(), 6013);
INSERT INTO mod_temporal VALUES (now(), 6014);
INSERT INTO mod_temporal VALUES (now(), 6015);

INSERT INTO mod_permanente VALUES ('noble', 6016);
INSERT INTO mod_permanente VALUES ('metal', 6017);
INSERT INTO mod_permanente VALUES ('noble', 6018);
INSERT INTO mod_permanente VALUES ('noble', 6019);
INSERT INTO mod_permanente VALUES ('prefabricado', 6020);
INSERT INTO mod_permanente VALUES ('metal', 6021);

INSERT INTO empleado VALUES (null, 'Francisco Velasquez', now(), 0101, 6001);
INSERT INTO empleado VALUES (null, 'Jose Perez', now(), 0101, 6001);
INSERT INTO empleado VALUES (null, 'Pedro Vargas', now(), 0101, 6001);
INSERT INTO empleado VALUES (null, 'Jimena Rios', now(), 0101, 6001);
INSERT INTO empleado VALUES (null, 'Esteban Quispe', now(), 0101, 6001);
INSERT INTO empleado VALUES (null, 'Javier Diaz', now(), 0101, 6002);
INSERT INTO empleado VALUES (null, 'Francisco Quispe', now(), 0101, 6002);
INSERT INTO empleado VALUES (null, 'Arnaldo Velasquez', now(), 0101, 6002);
INSERT INTO empleado VALUES (null, 'Diego Rodriguez' , now(), 0101, 6002);
INSERT INTO empleado VALUES (null, 'Santiago Garcia', now(), 0101, 6002);
INSERT INTO empleado VALUES (null, 'Mateo Lopez' , now(), 0101, 6003);
INSERT INTO empleado VALUES (null, 'Sebastian Perez' , now(), 0101, 6003);
INSERT INTO empleado VALUES (null, 'Matias Torres', now(), 0101, 6003);
INSERT INTO empleado VALUES (null, 'Luis Rivera' , now(), 0101, 6003);
INSERT INTO empleado VALUES (null, 'Samuel Reyes',  now(), 0101, 6003);
INSERT INTO empleado VALUES (null, 'Daniel Velasquez' , now(), 0101, 6004);
INSERT INTO empleado VALUES (null, 'Sofia Cruz',  now(), 0101, 6004);
INSERT INTO empleado VALUES (null, 'Isabella Ortiz' , now(), 0101, 6004);
INSERT INTO empleado VALUES (null, 'Valentina Ortiz',  now(), 0101, 6004);
INSERT INTO empleado VALUES (null, 'Camila Gutierrez',  now(), 0101, 6004);
INSERT INTO empleado VALUES (null, 'Salvador Velasquez' , now(), 0101, 6005);
INSERT INTO empleado VALUES (null, 'Elias Acosta' , now(), 0101, 6005);
INSERT INTO empleado VALUES (null, 'Lucas Alba' , now(), 0101, 6005);
INSERT INTO empleado VALUES (null, 'Miguel Vasco',  now(), 0101, 6005);
INSERT INTO empleado VALUES (null, 'Victoria Bastidas' , now(), 0101, 6005);
INSERT INTO empleado VALUES (null, 'Martina Buendia', now(), 0101, 6005);
INSERT INTO empleado VALUES (null, 'Lorenzo Cabalero' , now(), 0101, 6006);
INSERT INTO empleado VALUES (null, 'Marcos Cabo',  now(), 0101, 6006);
INSERT INTO empleado VALUES (null, 'Guillermo Carrera' , now(), 0101, 6006);
INSERT INTO empleado VALUES (null, 'Marco Cisneros', now(), 0101, 6006);
INSERT INTO empleado VALUES (null, 'Luciano Espinoza' , now(), 0101, 6006);
INSERT INTO empleado VALUES (null, 'Oliver Escobar',  now(), 0101, 6007);
INSERT INTO empleado VALUES (null, 'Patricio Echevarria' , now(), 0101, 6007);
INSERT INTO empleado VALUES (null, 'Kevin Estevez' , now(), 0101, 6007);
INSERT INTO empleado VALUES (null, 'Rafael Estrada',  now(), 0101, 6007);
INSERT INTO empleado VALUES (null, 'Valentin Escobar' , now(), 0101, 6007);
INSERT INTO empleado VALUES (null, 'Ethan Fernandez', now(), 0101, 6008);
INSERT INTO empleado VALUES (null, 'Maximo Fajardo' , now(), 0101, 6008);
INSERT INTO empleado VALUES (null, 'Mauricio Ferrera' , now(), 0101, 6008);
INSERT INTO empleado VALUES (null, 'Maximo Velasquez',  now(), 0101, 6008);
INSERT INTO empleado VALUES (null, 'Eduardo Falcon' , now(), 0101, 6008);
INSERT INTO empleado VALUES (null, 'Daniela Fuentes',  now(), 0101, 6009);
INSERT INTO empleado VALUES (null, 'Lucia Figueroa' , now(), 0101, 6009);
INSERT INTO empleado VALUES (null, 'Mariana Garcia' , now(), 0101, 6009);
INSERT INTO empleado VALUES (null, 'Renata Garay' , now(), 0101, 6009);
INSERT INTO empleado VALUES (null, 'Emilia Galvez',  now(), 0101, 6009);
INSERT INTO empleado VALUES (null, 'Samantha Gomez',  now(), 0101, 6010);
INSERT INTO empleado VALUES (null, 'Gabriela Grande' , now(), 0101, 6010);
INSERT INTO empleado VALUES (null, 'Victor Guzman' , now(), 0101, 6010);
INSERT INTO empleado VALUES (null, 'Franco Gordillo' , now(), 0101, 6010);
INSERT INTO empleado VALUES (null, 'Alonso Guerrero',  now(), 0101, 6010);
INSERT INTO empleado VALUES (null, 'Vicente Heredia' , now(), 0101, 6011);
INSERT INTO empleado VALUES (null, 'Aaron Hernandez',  now(), 0101, 6011);
INSERT INTO empleado VALUES (null, 'Emilio Hoyos' , now(), 0101, 6011);
INSERT INTO empleado VALUES (null, 'Damian Hidalgo',  now(), 0101, 6011);
INSERT INTO empleado VALUES (null, 'Alexander Ibañez' , now(), 0101, 6011);
INSERT INTO empleado VALUES (null, 'Isaac Ibarra' , now(), 0101, 6012);
INSERT INTO empleado VALUES (null, 'Pedro Infante',  now(), 0101, 6012);
INSERT INTO empleado VALUES (null, 'Hugo Izquierdo' , now(), 0101, 6012);
INSERT INTO empleado VALUES (null, 'Julian Jimenez' , now(), 0101, 6012);
INSERT INTO empleado VALUES (null, 'Ignacio Jordan',  now(), 0101, 6012);
INSERT INTO empleado VALUES (null, 'Fernando Jerez' , now(), 0101, 6013);
INSERT INTO empleado VALUES (null, 'Francisco Lago',  now(), 0101, 6013);
INSERT INTO empleado VALUES (null, 'Pablo Larrea' , now(), 0101, 6013);
INSERT INTO empleado VALUES (null, 'Manuel Leal',  now(), 0101, 6013);
INSERT INTO empleado VALUES (null, 'Jorge Linares',  now(), 0101, 6013);
INSERT INTO empleado VALUES (null, 'Jesus Lopez' , now(), 0101, 6014);
INSERT INTO empleado VALUES (null, 'Agustin Lozano' , now(), 0101, 6014);
INSERT INTO empleado VALUES (null, 'Adrian Luna',  now(), 0101, 6014);
INSERT INTO empleado VALUES (null, 'Javier Luque' , now(), 0101, 6014);
INSERT INTO empleado VALUES (null, 'Felipe Llano',  now(), 0101, 6014);
INSERT INTO empleado VALUES (null, 'Rodrigo machado' , now(), 0101, 6015);
INSERT INTO empleado VALUES (null, 'Ian Maldonado',  now(), 0101, 6015);
INSERT INTO empleado VALUES (null, 'Leonardo Manzanares' , now(), 0101, 6015);
INSERT INTO empleado VALUES (null, 'Martin Marco' , now(), 0101, 6015);
INSERT INTO empleado VALUES (null, 'Joaquin Marquez', now(), 0101, 6015);
INSERT INTO empleado VALUES (null, 'Thiago Martinez',  now(), 0101, 6016);
INSERT INTO empleado VALUES (null, 'Tomas Matas' , now(), 0101, 6016);
INSERT INTO empleado VALUES (null, 'Carlos Mayol',  now(), 0101, 6016);
INSERT INTO empleado VALUES (null, 'Alejandro Millan' , now(), 0101, 6016);
INSERT INTO empleado VALUES (null, 'David Montesinos' , now(), 0101, 6016);
INSERT INTO empleado VALUES (null, 'Benjamin Montero',  now(), 0101, 6017);
INSERT INTO empleado VALUES (null, 'Paul Montenegro',  now(), 0101, 6017);
INSERT INTO empleado VALUES (null, 'Regina Morales' , now(), 0101, 6017);
INSERT INTO empleado VALUES (null, 'Nicole Moran',  now(), 0101, 6017);
INSERT INTO empleado VALUES (null, 'Elena Morante' , now(), 0101, 6017);
INSERT INTO empleado VALUES (null, 'Andrea Nadal',  now(), 0101, 6018);
INSERT INTO empleado VALUES (null, 'Ana Navas' , now(), 0101, 6018);
INSERT INTO empleado VALUES (null, 'Julia Nieto',  now(), 0101, 6018);
INSERT INTO empleado VALUES (null, 'Lorenzo Nuñez',  now(), 0101, 6018);
INSERT INTO empleado VALUES (null, 'Thomas Ochoa' , now(), 0101, 6018);
INSERT INTO empleado VALUES (null, 'Valentino Ojeda',  now(), 0101, 6019);
INSERT INTO empleado VALUES (null, 'Marcos Olivares' , now(), 0101, 6019);
INSERT INTO empleado VALUES (null, 'Guillermo Ostuño',  now(), 0101, 6019);
INSERT INTO empleado VALUES (null, 'Juan Diego Pacheco',  now(), 0101, 6019);
INSERT INTO empleado VALUES (null, 'Bautista Palacios' , now(), 0101, 6019);
INSERT INTO empleado VALUES (null, 'Eduardo Paredes' , now(), 0101, 6020);
INSERT INTO empleado VALUES (null, 'Christopher Pastor',  now(), 0101, 6020);
INSERT INTO empleado VALUES (null, 'Ethan Patiño',  now(), 0101, 6020);
INSERT INTO empleado VALUES (null, 'Antonio Perales',  now(), 0101, 6020);
INSERT INTO empleado VALUES (null, 'Vicente Perera' , now(), 0101, 6020);
INSERT INTO empleado VALUES (null, 'Victor Pinto',  now(), 0101, 6020);
INSERT INTO empleado VALUES (null, 'Alonso Plana',  now(), 0101, 6021);
INSERT INTO empleado VALUES (null, 'Dante Quesada' , now(), 0101, 6021);
INSERT INTO empleado VALUES (null, 'Emilio Ramirez' , now(), 0101, 6021);

INSERT INTO seguridad VALUES ('Entrada', 'Tarde', 1);
INSERT INTO seguridad VALUES ('Entrada', 'Mañana', 2);
INSERT INTO seguridad VALUES ('Entrada', 'Noche', 3);
INSERT INTO seguridad VALUES ('Modulos de habitacion', 'Noche', 4);
INSERT INTO seguridad VALUES ('Modulos de habitacion', 'Tarde', 5);
INSERT INTO seguridad VALUES ('Almacen', 'Mañana', 6);
INSERT INTO seguridad VALUES ('Almacen', 'Tarde', 7);
INSERT INTO seguridad VALUES ('Almacen', 'Noche', 8);
INSERT INTO seguridad VALUES ('Refineria', 'Mañana', 9);
INSERT INTO seguridad VALUES ('Refineria', 'Tarde', 10);

INSERT INTO administrativo VALUES (40, 'Proyectos', 11);
INSERT INTO administrativo VALUES (20, 'Almacen', 12);
INSERT INTO administrativo VALUES (24, 'Proyectos', 13);
INSERT INTO administrativo VALUES (50, 'Almacen', 14);
INSERT INTO administrativo VALUES (44, 'Proyectos', 15);
INSERT INTO administrativo VALUES (40, 'Vehiculos', 16);
INSERT INTO administrativo VALUES (40, 'Vehiculos', 17);
INSERT INTO administrativo VALUES (28, 'Empleados', 18);
INSERT INTO administrativo VALUES (60, 'Empleados', 19);
INSERT INTO administrativo VALUES (52, 'Empleados', 20);

INSERT INTO logistica VALUES ('refineria', 21);
INSERT INTO logistica VALUES ('almacen', 22);
INSERT INTO logistica VALUES ('refineria', 23);
INSERT INTO logistica VALUES ('almacen', 24);
INSERT INTO logistica VALUES ('almacen', 25);
INSERT INTO logistica VALUES ('mina', 26);
INSERT INTO logistica VALUES ('mina', 27);
INSERT INTO logistica VALUES ('refineria', 28);
INSERT INTO logistica VALUES ('almacen', 29);
INSERT INTO logistica VALUES ('mina', 30);

INSERT INTO temporal VALUES ('Surnam', now(), 31);
INSERT INTO temporal VALUES ('Tempro', now(), 32);
INSERT INTO temporal VALUES ('Surnam', now(), 33);
INSERT INTO temporal VALUES ('Surnam', now(), 34);
INSERT INTO temporal VALUES ('Tempro', now(), 35);
INSERT INTO temporal VALUES ('Surnam', now(), 36);
INSERT INTO temporal VALUES ('Tempro', now(), 37);
INSERT INTO temporal VALUES ('Tempro', now(), 38);
INSERT INTO temporal VALUES ('Surnam', now(), 39);
INSERT INTO temporal VALUES ('Tempro', now(), 40);

INSERT INTO operario VALUES (40, 41);
INSERT INTO operario VALUES (40, 42);
INSERT INTO operario VALUES (40, 43);
INSERT INTO operario VALUES (40, 44);
INSERT INTO operario VALUES (40, 45);
INSERT INTO operario VALUES (40, 46);
INSERT INTO operario VALUES (40, 47);
INSERT INTO operario VALUES (40, 48);
INSERT INTO operario VALUES (40, 49);
INSERT INTO operario VALUES (40, 50);
INSERT INTO operario VALUES (40, 51);
INSERT INTO operario VALUES (40, 52);
INSERT INTO operario VALUES (40, 53);
INSERT INTO operario VALUES (40, 54);
INSERT INTO operario VALUES (40, 55);
INSERT INTO operario VALUES (40, 56);
INSERT INTO operario VALUES (40, 57);
INSERT INTO operario VALUES (40, 58);
INSERT INTO operario VALUES (40, 59);
INSERT INTO operario VALUES (40, 60);
INSERT INTO operario VALUES (40, 61);
INSERT INTO operario VALUES (40, 62);
INSERT INTO operario VALUES (40, 63);
INSERT INTO operario VALUES (40, 64);
INSERT INTO operario VALUES (40, 65);
INSERT INTO operario VALUES (40, 66);
INSERT INTO operario VALUES (40, 67);
INSERT INTO operario VALUES (40, 68);
INSERT INTO operario VALUES (40, 69);
INSERT INTO operario VALUES (40, 70);
INSERT INTO operario VALUES (40, 71);
INSERT INTO operario VALUES (40, 72);
INSERT INTO operario VALUES (40, 73);
INSERT INTO operario VALUES (40, 74);
INSERT INTO operario VALUES (40, 75);
INSERT INTO operario VALUES (40, 76);
INSERT INTO operario VALUES (40, 77);
INSERT INTO operario VALUES (40, 78);
INSERT INTO operario VALUES (40, 79);
INSERT INTO operario VALUES (40, 80);
INSERT INTO operario VALUES (40, 81);
INSERT INTO operario VALUES (40, 82);
INSERT INTO operario VALUES (40, 83);
INSERT INTO operario VALUES (40, 84);
INSERT INTO operario VALUES (40, 85);
INSERT INTO operario VALUES (40, 86);
INSERT INTO operario VALUES (40, 87);
INSERT INTO operario VALUES (40, 88);
INSERT INTO operario VALUES (40, 89);
INSERT INTO operario VALUES (40, 90);
INSERT INTO operario VALUES (40, 91);
INSERT INTO operario VALUES (40, 92);
INSERT INTO operario VALUES (40, 93);
INSERT INTO operario VALUES (40, 94);
INSERT INTO operario VALUES (40, 95);
INSERT INTO operario VALUES (40, 96);
INSERT INTO operario VALUES (40, 97);
INSERT INTO operario VALUES (40, 98);
INSERT INTO operario VALUES (40, 99);
INSERT INTO operario VALUES (40, 100);
INSERT INTO operario VALUES (40, 101);
INSERT INTO operario VALUES (40, 102);
INSERT INTO operario VALUES (40, 103);
INSERT INTO operario VALUES (40, 104);
INSERT INTO operario VALUES (40, 105);

INSERT INTO maquinaria_pesada VALUES ('Excavadora', 41);
INSERT INTO maquinaria_pesada VALUES ('Retro-excavadora', 42);
INSERT INTO maquinaria_pesada VALUES ('Excavadora', 43);
INSERT INTO maquinaria_pesada VALUES ('Excavadora', 44);
INSERT INTO maquinaria_pesada VALUES ('Retro-excavadora', 45);
INSERT INTO maquinaria_pesada VALUES ('Retro-excavadora', 46);
INSERT INTO maquinaria_pesada VALUES ('Draga', 47);
INSERT INTO maquinaria_pesada VALUES ('Draga', 48);
INSERT INTO maquinaria_pesada VALUES ('Dump Truck', 49);
INSERT INTO maquinaria_pesada VALUES ('Dump Truck', 50);

INSERT INTO transportista VALUES ('A-3', 51);
INSERT INTO transportista VALUES ('A-2', 52);
INSERT INTO transportista VALUES ('A-3', 53);
INSERT INTO transportista VALUES ('A-3', 54);
INSERT INTO transportista VALUES ('A-2', 55);
INSERT INTO transportista VALUES ('A-3', 56);
INSERT INTO transportista VALUES ('A-3', 57);
INSERT INTO transportista VALUES ('A-3', 58);
INSERT INTO transportista VALUES ('A-3', 59);
INSERT INTO transportista VALUES ('A-2', 60);

INSERT INTO mantenimiento VALUES (61,'Mañana');
INSERT INTO mantenimiento VALUES (62,'Tarde');
INSERT INTO mantenimiento VALUES (63,'Noche');
INSERT INTO mantenimiento VALUES (64,'Mañana');
INSERT INTO mantenimiento VALUES (65,'Tarde');
INSERT INTO mantenimiento VALUES (66,'Noche');
INSERT INTO mantenimiento VALUES (67,'Mañana');
INSERT INTO mantenimiento VALUES (68,'Tarde');
INSERT INTO mantenimiento VALUES (69,'Tarde');
INSERT INTO mantenimiento VALUES (70,'Noche');

INSERT INTO capataz VALUES (01, 71);
INSERT INTO capataz VALUES (02, 72);
INSERT INTO capataz VALUES (03, 73);
INSERT INTO capataz VALUES (04, 74);
INSERT INTO capataz VALUES (05, 75);

INSERT INTO mano_obra VALUES(76, 'Excavacion', 01);
INSERT INTO mano_obra VALUES(77, 'Excavacion', 01);
INSERT INTO mano_obra VALUES(78, 'Excavacion', 01);
INSERT INTO mano_obra VALUES(79, 'Excavacion', 01);
INSERT INTO mano_obra VALUES(80, 'Excavacion', 01);
INSERT INTO mano_obra VALUES(81, 'Excavacion', 01);
INSERT INTO mano_obra VALUES(82, 'Almacen', 02);
INSERT INTO mano_obra VALUES(83, 'Almacen', 02);
INSERT INTO mano_obra VALUES(84, 'Almacen', 02);
INSERT INTO mano_obra VALUES(85, 'Almacen', 02);
INSERT INTO mano_obra VALUES(86, 'Almacen', 02);
INSERT INTO mano_obra VALUES(87, 'Almacen', 02);
INSERT INTO mano_obra VALUES(88, 'Draga', 03);
INSERT INTO mano_obra VALUES(89, 'Draga', 03);
INSERT INTO mano_obra VALUES(90, 'Draga', 03);
INSERT INTO mano_obra VALUES(91, 'Draga', 03);
INSERT INTO mano_obra VALUES(92, 'Draga', 03);
INSERT INTO mano_obra VALUES(93, 'Draga', 03);
INSERT INTO mano_obra VALUES(94, 'Refinamiento', 04);
INSERT INTO mano_obra VALUES(95, 'Refinamiento', 04);
INSERT INTO mano_obra VALUES(96, 'Refinamiento', 04);
INSERT INTO mano_obra VALUES(97, 'Refinamiento', 04);
INSERT INTO mano_obra VALUES(98, 'Refinamiento', 04);
INSERT INTO mano_obra VALUES(99, 'Refinamiento', 04);
INSERT INTO mano_obra VALUES(100, 'Modulos habitacionales', 05);
INSERT INTO mano_obra VALUES(101, 'Modulos habitacionales', 05);
INSERT INTO mano_obra VALUES(102, 'Modulos habitacionales', 05);
INSERT INTO mano_obra VALUES(103, 'Modulos habitacionales', 05);
INSERT INTO mano_obra VALUES(104, 'Modulos habitacionales', 05);
INSERT INTO mano_obra VALUES(105, 'Modulos habitacionales', 05);

INSERT INTO infraestructura VALUES(501, now(), 0101);
INSERT INTO infraestructura VALUES(502, now(), 0101);
INSERT INTO infraestructura VALUES(503, now(), 0101);
INSERT INTO infraestructura VALUES(504, now(), 0101);
INSERT INTO infraestructura VALUES(505, now(), 0101);
INSERT INTO infraestructura VALUES(506, now(), 0101);
INSERT INTO infraestructura VALUES(507, now(), 0101);
INSERT INTO infraestructura VALUES(508, now(), 0101);
INSERT INTO infraestructura VALUES(509, now(), 0101);
INSERT INTO infraestructura VALUES(510, now(), 0101);
INSERT INTO infraestructura VALUES(511, now(), 0101);
INSERT INTO infraestructura VALUES(512, now(), 0101);
INSERT INTO infraestructura VALUES(513, now(), 0101);
INSERT INTO infraestructura VALUES(514, now(), 0101);
INSERT INTO infraestructura VALUES(515, now(), 0101);
INSERT INTO infraestructura VALUES(516, now(), 0101);
INSERT INTO infraestructura VALUES(517, now(), 0101);
INSERT INTO infraestructura VALUES(518, now(), 0101);
INSERT INTO infraestructura VALUES(519, now(), 0101);
INSERT INTO infraestructura VALUES(520, now(), 0101);

INSERT INTO refinadora VALUES(5100, 100, 5, 2000, 501);
INSERT INTO refinadora VALUES(5101, 200, 15, 5000, 502);
INSERT INTO refinadora VALUES(5102, 100, 5, 2000, 503);

INSERT INTO mina_cielo_abierto VALUES (5200, 50000, 504);
INSERT INTO mina_cielo_abierto VALUES (5201, 1000000, 505);
INSERT INTO mina_cielo_abierto VALUES (5202, 78000, 506);

INSERT INTO almacen VALUES (5300, 10000, 0, 507);
INSERT INTO almacen VALUES (5301, 10000, 0, 508);
INSERT INTO almacen VALUES (5302, 10000, 0, 509);
INSERT INTO almacen VALUES (5303, 10000, 0, 510);
INSERT INTO almacen VALUES (5304, 10000, 0, 511);
INSERT INTO almacen VALUES (5305, 10000, 0, 512);
INSERT INTO almacen VALUES (5306, 10000, 0, 513);
INSERT INTO almacen VALUES (5307, 10000, 0, 514);
INSERT INTO almacen VALUES (5308, 10000, 0, 515);

INSERT INTO suministros VALUES (5300, 'alimentos', now());
INSERT INTO suministros VALUES (5301, 'repuestos', now());
INSERT INTO suministros VALUES (5302, 'miscelaneos', now());

INSERT INTO mineral VALUES(5303, 'cobre nativo');
INSERT INTO mineral VALUES(5304, 'cobre nativo');
INSERT INTO mineral VALUES(5305, 'cobre nativo');
INSERT INTO mineral VALUES(5306, 'oro nativo');

INSERT INTO metal VALUES(5307, 'cobre');
INSERT INTO metal VALUES(5308, 'oro');

INSERT INTO garage VALUES(5400, 30, 0, 'ligeros', 516);
INSERT INTO garage VALUES(5401, 10, 0, 'maquniaria pesada', 517);
INSERT INTO garage VALUES(5402, 10, 0, 'maquinaria pesada', 518);
INSERT INTO garage VALUES(5403, 15, 0, 'transporte', 519);
INSERT INTO garage VALUES(5404, 15, 0, 'transporte', 520);

INSERT INTO vehiculo VALUES(300, 'V8R-576', 2300);
INSERT INTO vehiculo VALUES(301, 'V8R-789', 2200);
INSERT INTO vehiculo VALUES(302, 'V8R-923', 2000);
INSERT INTO vehiculo VALUES(303, 'V7R-126', 1300);
INSERT INTO vehiculo VALUES(304, 'V9R-866', 1800);
INSERT INTO vehiculo VALUES(305, 'V2R-886', 1900);
INSERT INTO vehiculo VALUES(306, 'V6R-666', 2500);
INSERT INTO vehiculo VALUES(307, 'V7R-336', 3000);
INSERT INTO vehiculo VALUES(308, 'V1R-156', 2100);
INSERT INTO vehiculo VALUES(309, 'V9R-796', 2300);
INSERT INTO vehiculo VALUES(310, 'CC5-576', 16000);
INSERT INTO vehiculo VALUES(311, 'CC6-566', 15000);
INSERT INTO vehiculo VALUES(312, 'CC8-588', 17000);
INSERT INTO vehiculo VALUES(313, 'CC8-116', 18000);
INSERT INTO vehiculo VALUES(314, 'CC4-896', 19000);
INSERT INTO vehiculo VALUES(315, 'CC9-534', 20000);
INSERT INTO vehiculo VALUES(316, 'CC4-163', 23000);
INSERT INTO vehiculo VALUES(317, 'CC1-441', 22000);
INSERT INTO vehiculo VALUES(318, 'CC0-158', 17000);
INSERT INTO vehiculo VALUES(319, 'CC0-626', 15000);
INSERT INTO vehiculo VALUES(320, 'R2A-946', 8000);
INSERT INTO vehiculo VALUES(321, 'R2A-566', 8500);
INSERT INTO vehiculo VALUES(322, 'R2A-129', 7200);
INSERT INTO vehiculo VALUES(323, 'R2A-679', 6600);
INSERT INTO vehiculo VALUES(324, 'R2A-378', 5000);
INSERT INTO vehiculo VALUES(325, 'R2A-896', 5000);
INSERT INTO vehiculo VALUES(326, 'R2A-915', 7500);
INSERT INTO vehiculo VALUES(327, 'R2A-824', 8000);
INSERT INTO vehiculo VALUES(328, 'R2A-576', 9300);
INSERT INTO vehiculo VALUES(329, 'R2A-576', 7000);

INSERT INTO guarda VALUES(300,5400);
INSERT INTO guarda VALUES(301,5400);
INSERT INTO guarda VALUES(302,5400);
INSERT INTO guarda VALUES(303,5400);
INSERT INTO guarda VALUES(304,5400);
INSERT INTO guarda VALUES(305,5400);
INSERT INTO guarda VALUES(306,5400);
INSERT INTO guarda VALUES(307,5400);
INSERT INTO guarda VALUES(308,5400);
INSERT INTO guarda VALUES(309,5400);
INSERT INTO guarda VALUES(310,5401);
INSERT INTO guarda VALUES(311,5401);
INSERT INTO guarda VALUES(312,5401);
INSERT INTO guarda VALUES(313,5401);
INSERT INTO guarda VALUES(314,5401);
INSERT INTO guarda VALUES(315,5402);
INSERT INTO guarda VALUES(316,5402);
INSERT INTO guarda VALUES(317,5402);
INSERT INTO guarda VALUES(318,5402);
INSERT INTO guarda VALUES(319,5402);
INSERT INTO guarda VALUES(320,5403);
INSERT INTO guarda VALUES(321,5403);
INSERT INTO guarda VALUES(322,5403);
INSERT INTO guarda VALUES(323,5403);
INSERT INTO guarda VALUES(324,5403);
INSERT INTO guarda VALUES(325,5404);
INSERT INTO guarda VALUES(326,5404);
INSERT INTO guarda VALUES(327,5404);
INSERT INTO guarda VALUES(328,5404);
INSERT INTO guarda VALUES(329,5404);

INSERT INTO soporte VALUES ('camioneta 4x4', null, 300);
INSERT INTO soporte VALUES ('camioneta 4x4', null, 301);
INSERT INTO soporte VALUES ('camioneta 4x4', null, 302);
INSERT INTO soporte VALUES ('grua', null, 303);
INSERT INTO soporte VALUES ('grua', null, 304);
INSERT INTO soporte VALUES ('grua', null, 305);
INSERT INTO soporte VALUES ('camioneta 4x4', null, 306);
INSERT INTO soporte VALUES ('camioneta 4x4', null, 307);
INSERT INTO soporte VALUES ('grua', null, 308);
INSERT INTO soporte VALUES ('grua', null, 309);

INSERT INTO excavacion VALUES(15000, 2000, 310);
INSERT INTO excavacion VALUES(17000, 2200, 311);
INSERT INTO excavacion VALUES(16000, 2100, 312);
INSERT INTO excavacion VALUES(15000, 1900, 313);
INSERT INTO excavacion VALUES(14000, 1800, 314);
INSERT INTO excavacion VALUES(13000, 2300, 315);
INSERT INTO excavacion VALUES(12000, 2300, 316);
INSERT INTO excavacion VALUES(11000, 2100, 317);
INSERT INTO excavacion VALUES(15000, 1800, 318);
INSERT INTO excavacion VALUES(16000, 1700, 319);

INSERT INTO transporte VALUES('pequeño', 6, 320);
INSERT INTO transporte VALUES('pequeño', 6, 321);
INSERT INTO transporte VALUES('mediano', 14, 322);
INSERT INTO transporte VALUES('mediano', 14, 323);
INSERT INTO transporte VALUES('mediano', 14, 324);
INSERT INTO transporte VALUES('mediano', 14, 325);
INSERT INTO transporte VALUES('grande', 42, 326);
INSERT INTO transporte VALUES('grande', 42, 327);
INSERT INTO transporte VALUES('grande', 42, 328);
INSERT INTO transporte VALUES('grande', 42, 329);

INSERT INTO conduce VALUES(31, 300, now());
INSERT INTO conduce VALUES(32, 301, now());
INSERT INTO conduce VALUES(33, 302, now());
INSERT INTO conduce VALUES(34, 303, now());
INSERT INTO conduce VALUES(35, 304, now());
INSERT INTO conduce VALUES(36, 305, now());
INSERT INTO conduce VALUES(37, 306, now());
INSERT INTO conduce VALUES(38, 307, now());
INSERT INTO conduce VALUES(39, 308, now());
INSERT INTO conduce VALUES(40, 309, now());

INSERT INTO opera VALUES(41, 310, now());
INSERT INTO opera VALUES(42, 311, now());
INSERT INTO opera VALUES(43, 312, now());
INSERT INTO opera VALUES(44, 313, now());
INSERT INTO opera VALUES(45, 314, now());
INSERT INTO opera VALUES(46, 315, now());
INSERT INTO opera VALUES(47, 316, now());
INSERT INTO opera VALUES(48, 317, now());
INSERT INTO opera VALUES(49, 318, now());
INSERT INTO opera VALUES(50, 319, now());

INSERT INTO maneja VALUES(51, 320, now());
INSERT INTO maneja VALUES(52, 321, now());
INSERT INTO maneja VALUES(53, 322, now());
INSERT INTO maneja VALUES(54, 323, now());
INSERT INTO maneja VALUES(55, 324, now());
INSERT INTO maneja VALUES(56, 325, now());
INSERT INTO maneja VALUES(57, 326, now());
INSERT INTO maneja VALUES(58, 327, now());
INSERT INTO maneja VALUES(59, 328, now());
INSERT INTO maneja VALUES(60, 329, now());

INSERT INTO mantiene VALUES(300, 61);
INSERT INTO mantiene VALUES(301, 61);
INSERT INTO mantiene VALUES(302, 61);
INSERT INTO mantiene VALUES(303, 62);
INSERT INTO mantiene VALUES(304, 62);
INSERT INTO mantiene VALUES(305, 62);
INSERT INTO mantiene VALUES(306, 63);
INSERT INTO mantiene VALUES(307, 63);
INSERT INTO mantiene VALUES(308, 63);
INSERT INTO mantiene VALUES(309, 64);
INSERT INTO mantiene VALUES(310, 64);
INSERT INTO mantiene VALUES(311, 64);
INSERT INTO mantiene VALUES(312, 65);
INSERT INTO mantiene VALUES(313, 65);
INSERT INTO mantiene VALUES(314, 65);
INSERT INTO mantiene VALUES(315, 66);
INSERT INTO mantiene VALUES(316, 66);
INSERT INTO mantiene VALUES(317, 66);
INSERT INTO mantiene VALUES(318, 67);
INSERT INTO mantiene VALUES(319, 67);
INSERT INTO mantiene VALUES(320, 67);
INSERT INTO mantiene VALUES(321, 68);
INSERT INTO mantiene VALUES(322, 68);
INSERT INTO mantiene VALUES(323, 68);
INSERT INTO mantiene VALUES(324, 69);
INSERT INTO mantiene VALUES(325, 69);
INSERT INTO mantiene VALUES(326, 69);
INSERT INTO mantiene VALUES(327, 70);
INSERT INTO mantiene VALUES(328, 70);
INSERT INTO mantiene VALUES(329, 70);

