USE MASTER
GO
CREATE DATABASE Relacion_NaN
GO
USE Relacion_NaN
GO
CREATE TABLE NUM_VENTA(
N_venta int not null Primary key identity(1,1),
N_emple int not null check(N_emple>0),
Fecha date check(Fecha=getdate()),
N_Cliente int not null check(N_Cliente>0)
)
GO
CREATE TABLE PRODUCTOS(
N_PRODUCTOS int not null Primary key identity (1,1),
Descripcion varchar(250),
Precio_UNIDAD money check(Precio_UNIDAD>0.00),
N_PROVEEDOR int not null check(N_PROVEEDOR>0),
STOCK int not null check(STOCK>0),
CATEGORIA int not null,
MARCA varchar(120)
)
GO
CREATE TABLE VENTAS(
N_VENTA int not null foreign key references NUM_VENTA(N_venta),
N_PRODUCTO int not null foreign key references PRODUCTOS(N_PRODUCTOS),
Cantidad int not null check(Cantidad>=0)
)

ALTER TABLE VENTAS
ADD CONSTRAINT PK_VENTAS PRIMARY KEY(N_VENTA,N_PRODUCTO)