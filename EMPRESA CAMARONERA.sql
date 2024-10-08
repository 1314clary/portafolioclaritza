--Tabla empresa de de camaronera en ecuador
 
CREATE TABLE EMPRESA
(
ID_EMPRESA INT PRIMARY KEY IDENTITY (1,1),
NOMBRE_EMPRESA VARCHAR (20) NOT NULL,
DIRRECCION_EMPRESA VARCHAR (20) NOT NULL,
);

CREATE TABLE PERSONAS 
(
ID_USUARIO INT PRIMARY KEY IDENTITY (1,1),
NOMBRE_USUARIO VARCHAR (25)NOT NULL,
apellido1 VARCHAR(100) NOT NULL,
apellido2 VARCHAR(100) NOT NULL,
CEDULA VARCHAR (20)  UNIQUE NOT NULL,
CONTRASEŅA VARCHAR (20) NOT NULL,
ESTADO VARCHAR  NOT NULL,
FECHA_REGISTRO DATE,
FOREIGN KEY (ID_USUARIO) REFERENCES EMPRESA (ID_EMPRESA)

);
 
--Tabla MERCANCIA

CREATE TABLE MERCANCIA
(
ID_MERCANCIA INT PRIMARY KEY IDENTITY (1,1),
NOMBRE_MERCANCIA VARCHAR (25) NOT NULL,
MARCA VARCHAR (20) NOT NULL,
DESCRIPCION VARCHAR (20) NOT NULL,
TIPO VARCHAR (20) NOT NULL,
FECHA_EXPIRACION INT NOT NULL,
imagen VARCHAR(256),
PRECIO_VENTA  INT NOT NULL,
ITEBIS INT NOT NULL,

)
--tabla de cliente

CREATE TABLE cliente
(
  ID_cliente INT PRIMARY KEY IDENTITY (1,1),
  nombre_cliente VARCHAR(50) NOT NULL,
  nombre_contacto VARCHAR(30) DEFAULT NULL,
  apellido_contacto VARCHAR(30) DEFAULT NULL,
  telefono VARCHAR(15) NOT NULL,
  fax VARCHAR(15) NOT NULL,
  linea_direccion1 VARCHAR(50) NOT NULL,
  linea_direccion2 VARCHAR(50) DEFAULT NULL,
  ciudad VARCHAR(50) NOT NULL,
  region VARCHAR(50) DEFAULT NULL,
  pais VARCHAR(50) DEFAULT NULL,
  NOMBRE_EMPLEADO_rep_ventas INTEGER DEFAULT NULL,
  limite_credito NUMERIC(15,2) DEFAULT NULL,
  FOREIGN KEY (ID_CLIENTE) REFERENCES empleado (ID_MERCANCIA),
);
--tabla facturacion

CREATE TABLE FACTURA 
(
ID_FACTURA INT PRIMARY KEY IDENTITY (1,1),
OBSERVACION VARCHAR (20) NOT NULL,
CANTIDAD INT NOT NULL,
COSTO INT NOT NULL,
)
