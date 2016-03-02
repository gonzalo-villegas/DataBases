CREATE DATABASES modelo_v1
GO
USE DATABASES  modelo_v1
GO
CREATE TABLE CLIENTE(
	ID_CLIENTE INT PRIMARY KEY,
)
GO
CREATE TABLE VENDEDOR(
	ID_VENDEDOR INT PRIMARY KEY,
)
GO
CREATE TABLE VENTA(
	ID_VENTA INT PRIMARY KEY,
	ID_CLIENTE INT,
	ID_VENDEDOR INT,
	FOREIGN KEY(ID_CLIENTE) REFERENCES CLIENTE(ID_CLIENTE),
	FOREIGN KEY(ID_VENDEDOR) REFERENCES VENDEDOR(ID_VENDEDOR),
)
GO
CREATE TABLE PROVEEDOR(
	ID_PPROVEEDOR INT PRIMARY KEY,
)
GO
CREATE TABLE ARTICULO(
	ID_ARTICULO INT PRIMARY KEY,
)
CREATE TABLE CATEGORIA(
	ID_CATEGORIA INT PRIMARY KEY,
)
GO
CREATE TABLE RESPONSABLE(
	ID_RESPONSABLE INT PRIMARY KEY,
)
GO
CREATE TABLE COMPRA(
	ID_COMPRA INT PRIMARY KEY,
	ID_RESPONSABLE INT,
	FOREIGN KEY(ID_RESPONSABLE) REFERENCES RESPONSABLE(ID_RESPONSABLE),
)
GO
CREATE TABLE MOVI_COMPRA_ARTICULO(
	ID_MOVI_COMPRA_ARTICULO INT, 
	ID_COMPRA INT,
	ID_ARTICULO INT,
	FOREIGN KEY(ID_COMPRA) REFERENCES COMPRA(ID_COMPRA),
	FOREIGN KEY(ID_ARTICULO) REFERENCES ARTICULO(ID_ARTICULO),
)
GO
CREATE TABLE MOVIMIENTO_ARTICULO_PROVEEDOR(
	ID_MOVIMIENTO_ARTICULO_PROVEEDOR INT,
	ID_PPROVEEDOR INT, 
	ID_ARTICULO INT,
	FOREIGN KEY(ID_PPROVEEDOR)  REFERENCES PROVEEDOR(ID_PPROVEEDOR),
	FOREIGN KEY(ID_ARTICULO) REFERENCES ARTICULO(ID_ARTICULO),
)
GO
CREATE TABLE NO_HAY_NOMBRE_DE_MOVIMIENTO(
	ID_NO_HAY_NOMBRE_DE_MOVIMIENTO INT,
	ID_VENTA INT,
	ID_ARTICULO INT,
)
GO