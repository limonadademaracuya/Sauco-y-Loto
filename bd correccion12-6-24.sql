drop database if exists cafeteria;
create database cafeteria;
use cafeteria;

CREATE TABLE clientes (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY, 
    nombre VARCHAR(50) NOT NULL,
    domicilio VARCHAR(50) NOT NULL,
    dni CHAR(8) NOT NULL,
    telefono VARCHAR(10),
    email VARCHAR(50)
);

CREATE TABLE proveedores(
    id_proveedor INT PRIMARY KEY,
    nombre_proveedor VARCHAR(50) NOT NULL,
    stock_actual INT NOT NULL,
    id_articulo INT NOT NULL, -- Asume que esto es correcto; si no, ajusta según sea necesario    
    telefono_proveedor VARCHAR(10),
    email VARCHAR(50)
);

CREATE TABLE articulos (
    codigo INT PRIMARY KEY,
    id_proveedor INT NOT NULL, -- Cambiado a INT para coincidir con la clave primaria de proveedores
    tipo VARCHAR(50),
    articulo varchar(50),
    precio double,
    stock_actual INT NOT NULL,
    stock_minimo INT NOT NULL,
    stock_maximo INT NOT NULL,
    FOREIGN KEY (id_proveedor) REFERENCES proveedores(id_proveedor) -- Añadido la FK directamente aquí
);

CREATE TABLE facturas(
    nro_pedido INT PRIMARY KEY,
    fecha DATE NOT NULL,
    monto DOUBLE NOT NULL,
    id_cliente INT NOT NULL,
    id_producto INT NOT NULL, -- Cambiado a id_producto para claridad
    forma_de_pago VARCHAR(50) NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente),
    FOREIGN KEY (id_producto) REFERENCES articulos(codigo) -- Añadido la FK correcta aquí
);

CREATE TABLE ventas(
    letra CHAR(1),
    numero INT,
    codigo INT,
    cantidad INT NOT NULL,
    PRIMARY KEY(letra, numero, codigo),
    FOREIGN KEY (codigo) REFERENCES articulos(codigo) -- Añadido la FK correcta aquí
);

-- -----------------------------------------------------------------------------------------------------------
select * from clientes;
INSERT INTO clientes (nombre, domicilio, dni, telefono, email) VALUES
	('Juan Perez', 'Corrientes 2678', '12345678', '987654321', 'juan.perez@gmail.com'),
    ('María Flores', 'Florida 876', '87654321', '123456789', 'maria.flores@gmail.com'),
    ('Carlos Rodriguez', 'Cabildo 4321', '23456789', '567890123', 'carlos.rodriguez@hotmail.com'),
    ('Lucía Franco', 'Thames 543', '34567812', '654321789', 'lucia.franco@outlook.com'),
    ('Martín Díaz', 'Santa Fe 1890', '98765432', '321789456', null),
    ('Carolina López', 'Lavalle 300', '45678123', '789456123', 'carolina.lopez@gmail.com'),
    ('Fernando Martínez', 'Rivadavia 5678', '78901234', '456123789', 'fernando.martinez@yahoo.com.ar'),
    ('Valeria García', 'Juan B. Justo 4321', '12345678', '123789456', null),
    ('Miguel Sánchez', 'Scalabrini Ortiz 2765', '56781234', '789456123', 'miguel.sanchez@gmail.com'),
    ('Camila Fernández', 'Gorriti 234', '12347890', '456789012', 'camila.fernandez@outlook.com'),
    ('Diego Britos', 'Honduras 1765', '78904561', '234567890', null),
    ('Brenda Giménez', 'Billinghurst 543', '34561230', '567890123', 'brenda.gimenez@gmail.com'),
    ('Marcelo Alvarez', 'Borges 4321', '78904561', '234567890', 'marcelo.alvarez@hotmail.com'),
    ('Romina Smith', 'Gurruchaga 1765', '34561230', '567890123', null),
    ('Eduardo Romero', 'Rivadavia 7890', '12034567', '678901234', 'eduardo.romero@gmail.com');

INSERT INTO proveedores (id_proveedor, nombre_proveedor, stock_actual, id_articulo, telefono_proveedor, email) VALUES
    ('1', 'cafe', '80', '1', '987654321', 'proveedoresdecafe@gmail.com'),
    ('2', 'dulce', '90', '2', '123456789', 'proveedoresdedulce@gmail.com'),
    ('3', 'panaderia', '100', '3', '112233445', 'proveedoresdepanaderia@gmail.com'),
    ('4', 'refresco', '71', '4', '122334455', 'proveedoresderefresco@gmail.com'),
    ('5', 'salado', '80', '5', '124356879', 'proveedoresdesalado@gmail.com'),
    ('6', 'te', '80', '6', '9182736645', 'proveedoresdete@gmail.com'),
    ('7', 'torta', '130', '7', '618293645', 'proveedoresdetortas@gmail.com');

INSERT INTO articulos (codigo, id_proveedor, tipo, articulo, precio, stock_actual, stock_minimo, stock_maximo) VALUES
    ('1', '1', 'cafe', 'Mocaccino', '4000','100', '10', '150'),
    ('2', '1', 'cafe','Iced Americano', '4000', '80', '5', '120'),
    ('3', '1', 'cafe','Expresso', '4000', '50', '8', '80'),
    ('4', '6', 'te','Chai latte', '4000', '30', '5', '50'),
    ('5', '3', 'panaderia','Muffin', '4000', '60', '10', '80'),
    ('6', '3', 'panaderia','Medialuna', '4000', '40', '8', '60'),
    ('7', '5', 'salado','Tostado', '4000', '25', '5', '40'),
    ('8', '5', 'salado','Waffles', '4000', '20', '5', '30'),
    ('9', '2', 'dulce','Alfajor de Maicena', '4000', '15', '3', '25'),
    ('10', '2', 'dulce','Dona', '4000', '35', '7', '55'),
    ('11', '2', 'dulce','Churro', '4000', '28', '6', '45'),
    ('12', '6', 'te','Matcha latte', '4000', '22', '4', '35'),
    ('13', '1', 'cafe','Cortado', '4000', '50', '10', '70'),
    ('14', '1', 'cafe','Submarino', '4000', '50', '10', '70'),
    ('15', '2', 'dulce','Pretzel', '4000', '50', '10', '70'),
    ('16', '2', 'dulce','Budin Marmolado', '4000', '50', '10', '70'),
    ('17', '3', 'panaderia','Pebete', '4000', '50', '10', '70'),
    ('18', '7','torta','rainbow cake', '4000', '50', '10', '70'),
    ('19', '5', 'salado','Sanguchito de Miga', '4000', '50', '10', '70'),
    ('20', '7', 'torta','torta red velvet', '4000', 50, 10, 70),
    ('21', '4', 'refresco','limonada con jengibre y menta', '4000', '50', '10', '70'),
    ('22', '4', 'refresco','limonada de maracuya', '4000', '50', '10', '70'),
    ('23', '7', 'torta','mousse de chocolate', '4000', '50', '10', '70');
select * from articulos;
INSERT INTO facturas (nro_pedido, fecha, monto, id_cliente, id_producto, forma_de_pago) VALUES
    (1, '2023-01-01', 150.00, 1, 1, 'efectivo'),
    (2, CURDATE(), 200.00, 2, 2, 'tarjeta'),
    (3, '2023-02-03', 100.00, 3, 3, 'efectivo'),
    (4, '2023-06-04', 120.00, 4, 4, 'efectivo'),
    (5, CURDATE(), 180.00, 5, 5, 'tarjeta'),
    (6, '2023-11-06', 90.00, 6, 6, 'efectivo'),
    (7, '2023-01-01', 200.00, 7, 7, 'tarjeta'),
    (8, '2023-09-10', 150.00, 8, 8, 'efectivo'),
    (9, '2023-08-09', 120.00, 9, 9, 'tarjeta'),
    (10, '2023-03-25', 160.00, 10, 10, 'efectivo'),
    (11, '2023-07-30', 190.00, 11, 11, 'tarjeta'),
    (12, '2023-04-02', 110.00, 12, 12, 'tarjeta'),
    (13, '2023-01-13', 130.00, 13, 13, 'efectivo'),
    (14, '2023-12-14', 160.00, 14, 14, 'tarjeta'),
    (15, '2023-12-14', 190.00, 15, 15, 'efectivo');

INSERT INTO ventas (letra, numero, codigo, cantidad) VALUES
    ('A', 1, 1, 5),
    ('B', 1, 2, 3),
    ('C', 1, 3, 2),
    ('A', 2, 4, 2),
    ('B', 2, 8, 3),
    ('C', 2, 6, 1),
    ('A', 3, 7, 4),
    ('B', 3, 8, 2),
    ('A', 4, 9, 3),
    ('A', 5, 10, 2),
    ('B', 4, 11, 3),
    ('C', 3, 8, 1),
    ('C', 4, 13, 4);






