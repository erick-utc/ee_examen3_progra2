CREATE DATABASE examen3
GO

USE examen3
GO

CREATE TABLE partidosPoliticos(
	IDPartido INT PRIMARY KEY IDENTITY(1,1),
	Nombre VARCHAR(10)
)
GO

CREATE TABLE formulario(
	NumeroEncuesta INT PRIMARY KEY IDENTITY(1,1),
	NombreParticipante VARCHAR(50),
	EdadNacimiento INT,
	CorreoElectronico VARCHAR(50),
	PartidoPolitico INT,
	CONSTRAINT fk_partido FOREIGN KEY (PartidoPolitico) REFERENCES partidosPoliticos(IDPartido)
)
GO

INSERT INTO partidosPoliticos(Nombre)
VALUES 
('PASE'), ('PAC'), ('ADN'),('CR1'),('CRJ'),('PT'),('FE'),
('PIN'),('PJSC'),('PLN'),('PLP'),('PML'),('PNP'),('PNG'),
('PNR'),('PPSD'),('PPSO'),('PRSC'),('PRN'),('PUSC'),('PUP'),
('PUCD'),('PUL')
GO

CREATE PROCEDURE AGREGAR_FORMULARIO
@NOMBRE VARCHAR(50),
@EDAD INT,
@CORREO VARCHAR(50),
@PARTIDO INT
AS
	BEGIN
		INSERT INTO formulario(NombreParticipante, EdadNacimiento, CorreoElectronico, PartidoPolitico)
		VALUES(@NOMBRE, @EDAD, @CORREO, @PARTIDO)
	END
GO

CREATE PROCEDURE CONSULTAR_TODOS_FORMULARIO
AS
	BEGIN
		SELECT formulario.NumeroEncuesta, formulario.NombreParticipante as Nombre, formulario.EdadNacimiento as Edad, formulario.CorreoElectronico as Correo, partidosPoliticos.Nombre as Partido
		FROM formulario
		INNER JOIN partidosPoliticos ON formulario.PartidoPolitico = partidosPoliticos.IDPartido
	END
GO

CREATE PROCEDURE CONSULTAR_PARTIDOS
AS
	BEGIN
		SELECT IDPartido, Nombre 
		FROM partidosPoliticos
	END
GO