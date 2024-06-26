drop database if exists cafeteria;
create database cafeteria;
use cafeteria;

CREATE TABLE clientes (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY, 
    nombre VARCHAR(50) NOT NULL,
    domicilio VARCHAR(50) NOT NULL,
    dni CHAR(8) NOT NULL,
    telefono VARCHAR(10),
    email VARCHAR(50),
    clave varchar(50)
);

CREATE TABLE administradores (
    id_administrador INT AUTO_INCREMENT PRIMARY KEY, 
    nombre VARCHAR(50) NOT NULL,
    dni CHAR(8) NOT NULL,
    telefono VARCHAR(10),
    email VARCHAR(50)
);

CREATE TABLE proveedores(
    id_proveedor INT PRIMARY KEY AUTO_INCREMENT,
    nombre_proveedor VARCHAR(50) NOT NULL,
    stock_actual INT,
    id_articulo INT,   
    telefono_proveedor VARCHAR(10),
    email VARCHAR(50)
);

CREATE TABLE articulos (
    codigo INT PRIMARY KEY,
    id_proveedor INT NOT NULL,
    tipo VARCHAR(50),
    articulo varchar(50),
    precio double,
    stock_actual INT NOT NULL,
    stock_minimo INT NOT NULL,
    stock_maximo INT NOT NULL,
    FOREIGN KEY (id_proveedor) REFERENCES proveedores(id_proveedor)
);

CREATE TABLE facturas(
    letra CHAR(1) NOT NULL,
    nro_pedido INT PRIMARY KEY auto_increment,
    fecha DATE NOT NULL,
    monto DOUBLE NOT NULL,
    id_cliente INT NOT NULL,
    id_administrador INT NOT NULL,
    forma_de_pago VARCHAR(50) NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente),
    FOREIGN KEY (id_administrador) REFERENCES administradores(id_administrador)
);

CREATE TABLE facturas_detalle (
    id_detalle INT AUTO_INCREMENT PRIMARY KEY,
    nro_pedido INT NOT NULL,
    codigo_articulo INT NOT NULL,
    cantidad INT NOT NULL,
    FOREIGN KEY (nro_pedido) REFERENCES facturas(nro_pedido),
    FOREIGN KEY (codigo_articulo) REFERENCES articulos(codigo)
);

-- -----------------------------------------------------------------------------------------------------------
select * from proveedores;

INSERT INTO administradores (nombre, dni, telefono, email) VALUES
	('Diego Paz', '12345448', '987622321', 'diego.paz@gmail.com'),
    ('Marta Flowers', '87655421', '123456229', 'maria.flowers@gmail.com'),
    ('Charles Rodriguez', '23276789', '567570123', 'charles.rodriguez@hotmail.com'),
    ('Lucia Frank', '34562212', '655721789', 'lucia.frank@outlook.com'),
    ('Martin Leal', '34765432', '357789456', 'martin.leal@yahoo.com'),
    ('Coraline Gutierrez', '88678573', '789456123', 'coraline.gutierrez@gmail.com'),
    ('Ferdinand Yaniez', '61901289', '456123789', 'ferdinand.yaniez@yahoo.com.ar'),
    ('Valeria García', '13345898', '123789456', 'valeria.garcia@hotmail.com'),
    ('Michael Penia', '59881894', '789456123', 'michael.penia@gmail.com'),
    ('Camila Grande', '12347000', '456789012', 'camila.grande@outlook.com'),
    ('Chris Evans', '70004561', '234567430', 'chris.evans@gmail.com'),
    ('Austin Post', '11561230', '437890123', 'austin.post@gmail.com'),
    ('Aurora Aksnes', '22904561', '234437890', 'aurora.aksnes@hotmail.com'),
    ('Adam Smith', '33561230', '569890123', 'adam.smith@gmail.com'),
    ('Andrew Garfield', '44034567', '622901234', 'andrew.garfield@gmail.com');

INSERT INTO clientes (nombre, domicilio, dni, telefono, email, clave) VALUES
	('Juan Perez', 'Corrientes 2678', '12345678', '987654321', 'juan.perez@gmail.com','abcd1234'),
    ('María Flores', 'Florida 876', '87654321', '123456789', 'maria.flores@gmail.com','11223344'),
    ('Carlos Rodriguez', 'Cabildo 4321', '23456789', '567890123', 'carlos.rodriguez@hotmail.com','holacarlos'),
    ('Lucía Franco', 'Thames 543', '34567812', '654321789', 'lucia.franco@outlook.com','luci1995'),
    ('Martín Díaz', 'Santa Fe 1890', '98765432', '321789456', 'martin.diaz@outlook.co','martin2024'),
    ('Carolina López', 'Lavalle 300', '45678123', '789456123', 'carolina.lopez@gmail.com','22caro22'),
    ('Fernando Martínez', 'Rivadavia 5678', '78901234', '456123789', 'fernando.martinez@yahoo.com.ar','1995fernan'),
    ('Valeria García', 'Juan B. Justo 4321', '12345678', '123789456', 'valeria.garcia@yahoo.com','valen1010'),
    ('Miguel Sánchez', 'Scalabrini Ortiz 2765', '56781234', '789456123', 'miguel.sanchez@gmail.com','miguelelmejor'),
    ('Camila Fernández', 'Gorriti 234', '12347890', '456789012', 'camila.fernandez@outlook.com','camiii777'),
    ('Diego Britos', 'Honduras 1765', '78904561', '234567890', 'diego.britos@','britoslol'),
    ('Brenda Giménez', 'Billinghurst 543', '34561230', '567890123', 'brenda.gimenez@gmail.com','Brendaaaa'),
    ('Marcelo Alvarez', 'Borges 4321', '78904561', '234567890', 'marcelo.alvarez@hotmail.com','clave1234'),
    ('Romina Smith', 'Gurruchaga 1765', '34561230', '567890123', 'romina.smith@gmail.com','amolosperros'),
    ('Eduardo Romero', 'Rivadavia 7890', '12034567', '678901234', 'eduardo.romero@gmail.com','amolosgatos');

INSERT INTO proveedores (id_proveedor, nombre_proveedor, stock_actual, id_articulo, telefono_proveedor, email) VALUES
    ('1', 'cafe', '80', '1', '987654321', 'proveedoresdecafe@gmail.com'),
    ('2', 'dulce', '90', '2', '123456789', 'proveedoresdedulce@gmail.com'),
    ('3', 'panaderia', '100', '3', '112233445', 'proveedoresdepanaderia@gmail.com'),
    ('4', 'refresco', '71', '4', '122334455', 'proveedoresderefresco@gmail.com'),
    ('5', 'salado', '80', '5', '124356879', 'proveedoresdesalado@gmail.com'),
    ('6', 'te', '80', '6', '9182736645', 'proveedoresdete@gmail.com'),
    ('7', 'torta', '130', '7', '618293645', 'proveedoresdetortas@gmail.com');

INSERT INTO articulos (codigo, id_proveedor, tipo, articulo, precio, stock_actual, stock_minimo, stock_maximo) VALUES
    ('1', '1', 'cafe', 'Mocaccino', '100','100', '10', '150'),
    ('2', '1', 'cafe','Iced Americano', '40', '80', '5', '120'),
    ('3', '1', 'cafe','Expresso', '20', '50', '8', '80'),
    ('4', '6', 'te','Chai latte', '90', '30', '5', '50'),
    ('5', '3', 'panaderia','Muffin', '40', '60', '10', '80'),
    ('6', '3', 'panaderia','Medialuna', '15', '40', '8', '60'),
    ('7', '5', 'salado','Tostado', '20', '25', '5', '40'),
    ('8', '5', 'salado','Waffles', '30', '20', '5', '30'),
    ('9', '2', 'dulce','Alfajor de Maicena', '35', '15', '3', '25'),
    ('10', '2', 'dulce','Dona', '40', '35', '7', '55'),
    ('11', '2', 'dulce','Churro', '40', '28', '6', '45'),
    ('12', '6', 'te','Matcha latte', '100', '22', '4', '35'),
    ('13', '1', 'cafe','Cortado', '90', '50', '10', '70'),
    ('14', '1', 'cafe','Submarino', '100', '50', '10', '70'),
    ('15', '2', 'dulce','Pretzel', '30', '50', '10', '70'),
    ('16', '2', 'dulce','Budin Marmolado', '20', '50', '10', '70'),
    ('17', '3', 'panaderia','Pebete', '10', '50', '10', '70'),
    ('18', '7','torta','rainbow cake', '200', '50', '10', '70'),
    ('19', '5', 'salado','Sanguchito de Miga', '70', '50', '10', '70'),
    ('20', '7', 'torta','torta red velvet', '200', 50, 10, 70),
    ('21', '4', 'refresco','limonada con jengibre y menta', '100', '50', '10', '70'),
    ('22', '4', 'refresco','limonada de maracuya', '150', '50', '10', '70'),
    ('23', '7', 'torta','mousse de chocolate', '200', '50', '10', '70');
select * from articulos;
INSERT INTO facturas (letra, nro_pedido, fecha, monto, id_cliente, id_administrador, forma_de_pago) VALUES
    ('A', 1, '2023-01-01', 150.00, 1, 1, 'efectivo'),
    ('B', 2, CURDATE(), 200.00, 2, 2, 'tarjeta'),
    ('C', 3, '2023-02-03', 100.00, 3, 3, 'efectivo'),
    ('A', 4, '2023-06-04', 120.00, 4, 4, 'efectivo'),
    ('B', 5, CURDATE(), 180.00, 5, 5, 'tarjeta'),
    ('C', 6, '2023-11-06', 90.00, 6, 6, 'efectivo'),
    ('A', 7, '2023-01-01', 200.00, 7, 7, 'tarjeta'),
    ('B', 8, '2023-09-10', 150.00, 8, 8, 'efectivo'),
    ('B', 9, '2023-08-09', 120.00, 9, 9, 'tarjeta'),
    ('C', 10, '2023-03-25', 160.00, 10, 10, 'efectivo'),
    ('C', 11, '2023-07-30', 200.00, 11, 11, 'tarjeta'),
    ('A', 12, '2023-04-02', 110.00, 12, 12, 'tarjeta'),
    ('C', 13, '2023-01-13', 130.00, 13, 13, 'efectivo'),
    ('A', 14, '2023-12-14', 160.00, 14, 14, 'tarjeta'),
    ('B', 15, '2023-12-14', 190.00, 15, 15, 'efectivo');

insert into facturas_detalle (nro_pedido, codigo_articulo, cantidad ) values
(1,1,1),
(1,15,1),
(1,17,1),
(2,23,1),
(3,4,1),
(3,17,1),
(4,13,2),
(4,16,1),
(5,14,1),
(5,5,2),
(6,2,1),
(7,23,1),
(8,3,5),
(8,15,1),
(8,16,1),
(9,1,1),
(9,7,1),
(10,22,1),
(10,17,1),
(11,20,7),
(12,3,1),
(12,13,1),
(13,12,1),
(13,8,1),
(14,13,1),
(14,19,1),
(15,1,1),
(15,2,1),
(15,7,1),
(15,15,1);

select * from facturas_detalle;


