/*Creando entorno de trabajo*/

create schema telovendoSprint;
Use telovendoSprint;

/*Creación de un usuario con permisos y privilegios completos para la modificación de la base de datos */

CREATE USER 'Dueño'@'localhost' IDENTIFIED BY 'Super@Secreto65';
GRANT ALL PRIVILEGES ON telovendoSprint . * TO 'Dueño'@'localhost'; 

/*Creando tablas e ingresando datos*/

/* Creando tabla proveedores con campos not null ya que no pueden quedar sin información. Se ocupa Varchar para incluir mayor variedad de caracteres,
 y el primary key es el id_proveedor*/
 
Create table Proveedores (
	id_proveedor int auto_increment not null,
    Representante_legal varchar (50) not null,
    Nombre_corporativo varchar (50) not null,
    Telefono_C1 varchar(19) not null,
    Receptor_C1 varchar (50) not null,
	Telefono_C2 varchar(19) not null,
    Receptor_C2 varchar (50) not null,
    Categoría_producto varchar (50) not null,
    Email  varchar (30) not null,
    primary key (id_proveedor)
);
/* Datos a ingresar de cada campo */

insert into proveedores (id_proveedor, Representante_legal, Nombre_corporativo, Telefono_C1, Receptor_C1, Telefono_C2, Receptor_C2, Categoría_producto, Email) values ('1','Pedro','Venta Monitores', '666 555 333', 'Juanita Perez', '666 555 444', 'Juanillo Gonzalez', 'Monitores', 'elcosiaco@elcoso.cl' );
insert into proveedores (id_proveedor, Representante_legal,Nombre_corporativo, Telefono_C1, Receptor_C1, Telefono_C2, Receptor_C2, Categoría_producto, Email) values ('2','Rosa','Venta Computadores', '777 666 333', 'Juan Carlos Perez', '777 666 444', 'Juan Cristobal Gonzalez', 'Computadores', 'lacosiaca@lacosa.cl' );
insert into proveedores (id_proveedor, Representante_legal,Nombre_corporativo, Telefono_C1, Receptor_C1, Telefono_C2, Receptor_C2, Categoría_producto, Email) values ('3','Juan','Venta CPU', '888 777 333', 'Pepita Perez', '888 777 444', 'Juan Alberto Gonzalez', 'CPU', 'cosirijillo@uncosillo.cl' );
insert into proveedores (id_proveedor, Representante_legal,Nombre_corporativo, Telefono_C1, Receptor_C1, Telefono_C2, Receptor_C2, Categoría_producto, Email) values ('4','Miguel','Venta GPU', '999 888 333', 'VerÃ³nica Perez', '999 888 444', 'Ruperto Gonzalez', 'GPU', 'cerrado@elcaso.cl' );
insert into proveedores (id_proveedor, Representante_legal, Nombre_corporativo, Telefono_C1, Receptor_C1, Telefono_C2, Receptor_C2, Categoría_producto, Email) values ('5','Antonio','Venta Servidores', '111 222 333', 'Roberta Perez', '111 222 444', 'Arnold Gonzalez', 'Servidores', 'somos@elcaos.cl' );

/* Creación de una tabla cliente con id_cliente auto_increment para que sea autoincrementable y correlativo. Nombre, apellido y direccion quedan con VARCHAR para poder ingresar diversos caracteres,*/

create table cliente (
	id_cliente INT NOT NULL AUTO_INCREMENT,
    Nombre VARCHAR(50) not null,
	Apellido VARCHAR(50) not null,
	Direccion VARCHAR(50) not null,
    PRIMARY KEY (id_cliente)
    
);
/* Datos a ingresar de cada campo*/ 

INSERT INTO cliente (id_cliente, Nombre, Apellido, Direccion) values (1, 'Klark' , ' kent ', 'av. siempre viva 211');
INSERT INTO cliente (id_cliente,Nombre, Apellido, Direccion) values (2, 'Mary' , ' Shelly ', 'av. los laureles 444');
INSERT INTO cliente (id_cliente,Nombre, Apellido, Direccion) values (3, 'Duck' , ' Willsee ', 'av. San Marcos 2932');
INSERT INTO cliente (id_cliente,Nombre, Apellido, Direccion) values (4, 'Kelly' , ' Clarkson ', 'los condominios lala');
INSERT INTO cliente (id_cliente,Nombre, Apellido, Direccion) values (5, 'Pink' , ' Floyd ', 'Us and them 594');

/* Creación tabla Productos con id_producto auto_increment para que sea autoincrementable y correlativo.  Precio, categoria, id_proovedor y 
color con VARCHAR para ingresar caracteres, siendo el primary key id_productos*/

create table PRODUCTOS (
	id_producto INT  auto_increment not null,
	Nombre_producto VARCHAR(50) not null,
	precio VARCHAR(50) not null,
	Categoria VARCHAR(50) not null,
	id_proveedor VARCHAR(50) not null,
	Color VARCHAR(50),
    Stock int not null,
    primary key(id_producto),
    FOREIGN KEY (id_proveedor) REFERENCES proveedores(id_proveedor)
);

/* Datos a ingresar de cada campo*/ 

insert into PRODUCTOS (id_producto, Nombre_producto, precio, Categoria, id_proveedor, Color, Stock) values (1, 'Monitor A1', '350000', 'Monitores', 1, 'Puce', 20);
insert into PRODUCTOS (id_producto, Nombre_producto, precio, Categoria, id_proveedor, Color, Stock) values (2, 'Computador FTX1', '850000', 'Computadores', 2, 'Purple', 5);
insert into PRODUCTOS (id_producto, Nombre_producto, precio, Categoria, id_proveedor, Color, Stock) values (3, 'CPU 5600C', '400000', 'CPU', '3', 'Red', 25);
insert into PRODUCTOS (id_producto, Nombre_producto, precio, Categoria, id_proveedor, Color, Stock) values (4, 'GPU RTP670', '900000', 'GPU', 4, 'Blue', 10);
insert into PRODUCTOS (id_producto, Nombre_producto, precio, Categoria, id_proveedor, Color, Stock) values (5, 'Monitor a45', '280000', 'Monitores', 5, 'Fuscia', 50);
insert into PRODUCTOS (id_producto, Nombre_producto, precio, Categoria, id_proveedor, Color, Stock) values (6, 'Monitor B1', '400000', 'Monitores', 1, 'Khaki', 18);
insert into PRODUCTOS (id_producto, Nombre_producto, precio, Categoria, id_proveedor, Color, Stock) values (7, 'Computador Gamer', '2500000', 'Computadores', 2, 'Maroon', 3);
insert into PRODUCTOS (id_producto, Nombre_producto, precio, Categoria, id_proveedor, Color, Stock) values (8, 'CPU 7600C', '550000', 'CPU', 3, 'Yellow', 12);
insert into PRODUCTOS (id_producto, Nombre_producto, precio, Categoria, id_proveedor, Color, Stock) values (9, 'GPU RTX3090', '1200000', 'GPU', 4, 'Purple', 4);
insert into PRODUCTOS (id_producto, Nombre_producto, precio, Categoria, id_proveedor, Color, Stock) values (10, 'Servidor PP290', '500000', 'Servidores', 5, 'Indigo', 22);	

/*Creación de tabla para el manejo de detalles de productos solicitados, siendo "num_detalle" la variable primaria autoincremental de tipo integer, id_producto una llave
foránea que hace referencia a la tabla productos e id_factura, cantidad y total son integer dentro de la tabla.*/

create table detalle (
	num_detalle int not null auto_increment,
	id_factura int not null,
    id_producto int,
    cantidad int,
    total int,
    PRIMARY KEY (num_detalle),
	FOREIGN KEY (id_producto) REFERENCES productos(id_producto)
    );

/*Creación de tabla para elaborar una factura con información vinculada al cliente, está compuesta de llave primaria de nombre "num_factura" la cual es
un entero autoincremental. "id_cliente" es una llave foránea de tipo entera que apunta a la tabla "cliente"*/

create table factura (
	num_factura int not null auto_increment,
	id_cliente int not null,
    PRIMARY KEY (num_factura),
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente)
    );




/* CONSULTAS */


/* ¿Cuál es la categoría de productos que más se repite?*/

select categoria, count(categoria) as cantidad from PRODUCTOS
		group by categoria order by cantidad desc;
        
/* ¿Cuáles son los productos con mayor stock?*/
/* Los tres productos con mayor stock*/
select Nombre_producto, Stock from PRODUCTOS
	order by Stock desc limit 3;
    
/* ¿Qué color de producto es más común en nuestra tienda?
dos formas de hacerlo*/

/*metodo uno*/
SELECT p, max(cantidad) from ( select Color as p, count(color) as cantidad from PRODUCTOS 
	group by Color order by cantidad desc) as X;
    
/*metodo dos*/
select Color, count(color) as cantidad  from PRODUCTOS
	group by Color order by cantidad desc limit 1;
	
    /* ¿Cual o cuales son los proveedores con menor stock de productos?*/
    
select proveedores.Nombre_corporativo,sum(Stock) as Stock_Total from PRODUCTOS
	inner join proveedores on PRODUCTOS.id_proveedor = proveedores.id_proveedor
	group by PRODUCTOS.id_proveedor order by Stock_Total asc limit 3;
    
    /*Cambien la categoría de productos más popular por ‘Electrónica y computación */
    
    select categoria, count(categoria) as cantidad from PRODUCTOS
		group by categoria order by cantidad desc;
SET SQL_SAFE_UPDATES = 0;     
update PRODUCTOS
	SET Categoria='Electrónica y computación'
		where Categoria= 'Monitores';
update proveedores
	SET Categoría_producto='Electrónica y computación'
		where Categoría_producto= 'Monitores';
        
	