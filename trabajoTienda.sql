create database trabajoTienda;
use trabajoTienda;
CREATE TABLE Productos (
	id INT auto_increment PRIMARY KEY,
    nombre VARCHAR(25) NOT NULL,
    precio DECIMAL(5, 2) NOT NULL,
    stock INT NOT NULL
);


CREATE TABLE Clientes(
	id INT auto_increment PRIMARY KEY,
    nombre VARCHAR(25) NOT NULL,
    correo VARCHAR(30),
    direccion VARCHAR(30)
);

CREATE TABLE Compras(
	id INT auto_increment PRIMARY KEY,
    cliente_id int,
    producto_id int,
    cantidad int,
    fecha date,
    
    foreign key (cliente_id) references Clientes(id),
	foreign key (producto_id) references Productos(id)
);


INSERT INTO Productos (nombre, precio, stock) VALUES
('Arroz', 2.99, 100),
('Fideos', 1.99, 150),
('Aceite de oliva', 5.99, 50),
('Azúcar', 1.49, 200),
('Sal', 0.99, 300),
('Harina', 2.49, 120),
('Café', 4.99, 80),
('Leche', 3.49, 200),
('Yogur', 2.99, 150),
('Queso', 6.99, 50),
('Mantequilla', 2.99, 100),
('Huevos', 3.99, 60),
('Papel higiénico', 4.99, 100),
('Jabón de lavandería', 2.49, 80),
('Detergente líquido', 3.99, 120),
('Lavavajillas', 4.99, 70),
('Limpiador multiusos', 3.99, 90),
('Cepillo de dientes', 1.99, 200),
('Pasta de dientes', 2.99, 150),
('Enjuague bucal', 3.99, 100),
('Cuchillas de afeitar', 4.99, 50),
('Champú', 3.49, 120),
('Acondicionador', 3.49, 120),
('Gel de ducha', 2.99, 150),
('Toallas de papel', 2.99, 100),
('Pañuelos desechables', 1.99, 200),
('Botellas de agua', 0.99, 300),
('Refrescos', 1.49, 250),
('Cerveza', 2.99, 150),
('Vino tinto', 9.99, 50),
('Vino blanco', 8.99, 70),
('Whisky', 19.99, 30),
('Vodka', 14.99, 40),
('Ron', 12.99, 60),
('Ginebra', 11.99, 80),
('Té', 3.49, 100),
('Cacao en polvo', 4.99, 80),
('Galletas', 2.49, 200),
('Caramelos', 1.49, 300),
('Chocolate', 3.99, 150),
('Snacks', 2.99, 200),
('Nueces', 6.99, 50),
('Frutas secas', 4.99, 100),
('Aceitunas', 2.99, 120),
('Salsas', 3.49, 100),
('Especias', 1.99, 200),
('Miel', 4.99, 80),
('Vinagre', 2.49, 150),
('Mostaza', 1.99, 100),
('Mayonesa', 2.99, 120),
('Ketchup', 1.99, 150);


INSERT INTO Clientes (nombre, correo, direccion) VALUES
('Juan Perez', 'juanperez@example.com', 'Calle Principal 123'),
('Maria Garcia', 'mariagarcia@example.com', 'Avenida Central 456'),
('Pedro Sanchez', 'pedrosanchez@example.com', 'Calle Secundaria 789'),
('Laura Rodriguez', 'laurarodriguez@example.com', 'Calle Principal 234'),
('Carlos Martinez', 'carlosmartinez@example.com', 'Avenida Central 567'),
('Ana Lopez', 'analopez@example.com', 'Calle Secundaria 890'),
('Jose Ramirez', 'joseramirez@example.com', 'Calle Principal 345'),
('Sofia Torres', 'sofiatorres@example.com', 'Avenida Central 678'),
('Fernando Castro', 'fernandocastro@example.com', 'Calle Secundaria 901'),
('Paula Herrera', 'paulaherrera@example.com', 'Calle Principal 456'),
('Luis Gomez', 'luisgomez@example.com', 'Avenida Central 789'),
('Carolina Morales', 'carolinamorales@example.com', 'Calle Secundaria 012'),
('David Rivera', 'davidrivera@example.com', 'Calle Principal 567'),
('Elena Diaz', 'elenadiaz@example.com', 'Avenida Central 890'),
('Ricardo Ortega', 'ricardoortega@example.com', 'Calle Secundaria 123'),
('Julia Vargas', 'juliavargas@example.com', 'Calle Principal 678'),
('Roberto Paredes', 'robertoparedes@example.com', 'Avenida Central 901'),
('Patricia Rojas', 'patriciarojas@example.com', 'Calle Secundaria 234'),
('Andres Mendoza', 'andresmendoza@example.com', 'Calle Principal 789'),
('Mariana Castro', 'marianacastro@example.com', 'Avenida Central 012'),
('Gabriel Torres', 'gabrieltorres@example.com', 'Calle Secundaria 345'),
('Valentina Navarro', 'valentinanavarro@example.com', 'Calle Principal 890'),
('Javier Cordero', 'javiercordero@example.com', 'Avenida Central 123'),
('Isabella Vega', 'isabellavega@example.com', 'Calle Secundaria 456'),
('Alejandro Soto', 'alejandrosoto@example.com', 'Calle Principal 012'),
('Camila Rios', 'camilarios@example.com', 'Avenida Central 567'),
('Daniel Fuentes', 'danielfuentes@example.com', 'Calle Secundaria 789'),
('Lucia Morales', 'luciamorales@example.com', 'Calle Principal 234'),
('Sebastian Guzman', 'sebastianguzman@example.com', 'Avenida Central 567'),
('Valeria Castillo', 'valeriacastillo@example.com', 'Calle Secundaria 890'),
('Felipe Herrera', 'felipeherrera@example.com', 'Calle Principal 345'),
('Daniela Vargas', 'danielavargas@example.com', 'Avenida Central 678'),
('Gonzalo Soto', 'gonzalosoto@example.com', 'Calle Secundaria 901'),
('Carla Paredes', 'carlaparedes@example.com', 'Calle Principal 456'),
('Mateo Rojas', 'mateorojas@example.com', 'Avenida Central 789'),
('Antonia Ortega', 'antoniaortega@example.com', 'Calle Secundaria 012'),
('Emilio Mendoza', 'emiliomendoza@example.com', 'Calle Principal 567'),
('Renata Navarro', 'renatanavarro@example.com', 'Avenida Central 890'),
('Felipe Castro', 'felipecastro@example.com', 'Calle Secundaria 123'),
('Martina Torres', 'martinatorres@example.com', 'Calle Principal 678'),
('Emilia Vargas', 'emiliavargas@example.com', 'Avenida Central 901'),
('Matias Guzman', 'matiasguzman@example.com', 'Calle Secundaria 234'),
('Isidora Castillo', 'isidoracastillo@example.com', 'Calle Principal 789'),
('Bastian Herrera', 'bastianherrera@example.com', 'Avenida Central 012'),
('Agustina Soto', 'agustinasoto@example.com', 'Calle Secundaria 345'),
('Gaspar Rojas', 'gasparrojas@example.com', 'Calle Principal 890'),
('Trinidad Ortega', 'trinidadortega@example.com', 'Avenida Central 123'),
('Ignacio Mendoza', 'ignaciomendoza@example.com', 'Calle Secundaria 456');

INSERT INTO Compras (cliente_id, producto_id, cantidad, fecha) VALUES
(1, 2, 3, '2023-06-15'),
(1, 5, 2, '2023-06-16'),
(2, 1, 1, '2023-06-17'),
(2, 4, 4, '2023-06-18'),
(3, 8, 2, '2023-06-19'),
(3, 12, 3, '2023-06-20'),
(4, 6, 1, '2023-06-21'),
(4, 9, 2, '2023-06-22'),
(5, 3, 3, '2023-06-23'),
(5, 7, 1, '2023-06-24'),
(6, 11, 2, '2023-06-25'),
(6, 15, 3, '2023-06-26'),
(7, 14, 1, '2023-06-27'),
(7, 18, 2, '2023-06-28'),
(8, 17, 3, '2023-06-29'),
(8, 21, 1, '2023-06-30'),
(9, 13, 2, '2023-07-01'),
(9, 16, 3, '2023-07-02'),
(10, 20, 1, '2023-07-03'),
(10, 23, 2, '2023-07-04'),
(11, 19, 3, '2023-07-05'),
(11, 22, 1, '2023-07-06'),
(12, 24, 2, '2023-07-07'),
(12, 27, 3, '2023-07-08'),
(1, 30, 1, '2023-07-09'),
(1, 33, 2, '2023-07-10'),
(2, 29, 3, '2023-07-11'),
(2, 32, 1, '2023-07-12'),
(3, 36, 2, '2023-07-13'),
(3, 39, 3, '2023-07-14'),
(4, 35, 1, '2023-07-15'),
(4, 38, 2, '2023-07-16'),
(5, 42, 3, '2023-07-17'),
(5, 45, 1, '2023-07-18'),
(6, 41, 2, '2023-07-19'),
(6, 44, 3, '2023-07-20'),
(7, 48, 1, '2023-07-21'),
(7, 50, 2, '2023-07-22'),
(8, 46, 3, '2023-07-23'),
(8, 49, 1, '2023-07-24'),
(9, 47, 2, '2023-07-25'),
(9, 50, 3, '2023-07-26'),
(10, 23, 1, '2023-07-27'),
(10, 45, 2, '2023-07-28'),
(11, 23, 3, '2023-07-29'),
(11, 34, 1, '2023-07-30'),
(12, 5, 2, '2023-07-31'),
(12, 5, 3, '2023-08-01');


-- Agregar columna):
ALTER TABLE Productos
ADD COLUMN descuentos decimal(5,2) not null;
update Productos
set descuentos = 0;

-- modificar tipo de datp de tabla
alter table Productos
modify column precio decimal(6, 2) not null;

-- realizar consulta
select c.nombre , p.nombre
from Clientes c 
inner join Compras co
ON c.id = co.cliente_id
inner join Productos p 
on co.producto_id = p.id;

-- realizar descuentos en productos:
Update Productos 
set descuentos = 2
where id=3;
Update Productos 
set descuentos = 2
where id=5;
Update Productos 
set descuentos = 2
where id =8;
Update Productos 
set descuentos = 2
where id=15;

-- crear lista:
create view ProductosDesc AS 
select *
from productos 
where descuentos >0;

-- crear index
create index index_nombre
on Productos (nombre);

-- crear procedure
-- Procedimientos almacenados

use trabajoTienda;
DELIMITER //
CREATE PROCEDURE montoVentasTotal (
    IN cliente_id INT,
    OUT total_ventas DECIMAL(10, 2)
)
BEGIN
    SELECT SUM(cantidad * precio)
    INTO total_ventas 
    FROM Compras
    INNER JOIN Productos ON Compras.producto_id = Productos.id
    WHERE Compras.cliente_id = cliente_id;
END //

-- into sirve para asignar el resultado a la variable

-- pruebo Procedure CalcularTotalVentas pasandole por parametro el cliente_id = 1 y la variable @total donde me devolvera el gasto total del cliente 1
SET @total := 0;
CALL montoVentasTotal(1, @total);
SELECT @total AS TotalVentas;


-- ejercicio 6 funciones

-- promedio productos

SET GLOBAL log_bin_trust_function_creators = 1;

CREATE FUNCTION CalcularPromedioValores()
RETURNS DECIMAL(10, 2)
BEGIN
    DECLARE promedio DECIMAL(10, 2);
    
    SELECT AVG(precio) INTO promedio
    FROM productos;
    
    RETURN promedio;
END;

-- ejecuto la funcion
SELECT CalcularPromedioValores() AS PromedioValores;

CalcularPromedioValores

-- PUNTO 7 Transacciones

START TRANSACTION;
-- variable para manejar errores
DECLARE @error INT;

INSERT INTO Clientes (nombre, correo, direccion)
VALUES ('Cliente Nuevo', 'nuevo@cliente.com', 'Saenz pena 4903');

-- Comprobar si ocurrió algún error durante la inserción del cliente
SET @error = @@ERROR;
IF @error <> 0
BEGIN
    -- Si ocurrió un error, hacer un rollback y mostrar un mensaje de error
    ROLLBACK;
    SELECT 'Error al insertar nuevo cliente. Se ha realizado un rollback.';
    RETURN;
END;

-- OBTENER EL ID DEL NUEVO CLIENTE INSERTADO
SET @cliente_id := LAST_INSERT_ID();

-- INSERTAR NUEVA ORDEN DE COMPRA PARA EL NUEVO CLIENTE
INSERT INTO Compras (cliente_id, producto_id, cantidad, fecha)
VALUES (@cliente_id, 1, 3, '2023-09-15');

-- Comprobar si ocurrió algún error durante la inserción de la orden de compra
SET @error = @@ERROR;
IF @error <> 0
BEGIN
    -- Si ocurrió un error, hacer un rollback y mostrar un mensaje de error
    ROLLBACK;
    SELECT 'Error al insertar nueva orden de compra. Se ha realizado un rollback.';
    RETURN;
END;

-- Si no ocurrió ningún error, hacer commit y mostrar un mensaje de éxito
COMMIT;
SELECT 'Transacción completada con exito.';

-- PUNTO 8 Triggers 
DELIMITER //

CREATE TRIGGER ActualizarStockDespuesDeCompra
AFTER INSERT ON Compras
FOR EACH ROW
BEGIN
    DECLARE stock_actual INT;
    
    -- Obtener el stock actual del producto
    SELECT stock INTO stock_actual
    FROM productos
    WHERE id = NEW.producto_id;
    
    -- Calcular el nuevo stock después de la compra
    SET stock_actual = stock_actual - NEW.cantidad;
    
    -- Actualizar el stock en la tabla productos
    UPDATE productos
    SET stock = stock_actual
    WHERE id = NEW.producto_id;
END //

DELIMITER ;

-- inserto un valor nuevo para probar el trigger
INSERT INTO Compras (cliente_id, producto_id, cantidad, fecha)
VALUES (10, 10, 20, '2023-01-05');

SELECT stock
FROM productos
WHERE id = 1;