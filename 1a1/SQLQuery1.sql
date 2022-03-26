create database Relación_1a1
GO
use Relación_1a1
GO
CREATE TABLE CodigoDeBarras(
IdCodigo int not null primary key identity(1,1),
Precio money not null check(Precio > 0.00)
)
GO
CREATE TABLE Articulo(
IdArticulo int not null unique,
IdCodBarras int primary key foreign key references CodigoDeBarras(IdCodigo),
Descripción VARCHAR(250),
FechaVencimiento DATE,
FechaEmisión DATE
)