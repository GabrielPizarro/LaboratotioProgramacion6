CREATE TABLE [dbo].[Vehiculo]
(
	VehiculoId INT NOT NULL IDENTITY(1,1) CONSTRAINT PK_Vehiculo PRIMARY KEY CLUSTERED(VehiculoId)
	, MarcaVehiculo INT NOT NULL CONSTRAINT FK_Vehiculo_MarcaVehiculo FOREIGN KEY (MarcaVehiculId)
	REFERENCES Dbo.MarcaVehiculo(MarcaVehiculo)
	, Matricula VARCHAR(250) NOT NULL
	, Color VARCHAR(250) NOT NULL
	, Modelo VARCHAR NOT NULL
	, FechaModelo DATE NOT NULL CONSTRAINT DE_Vehiculo_FechaModelo default('2020-01-01')
	, Estado BIT NOT NULL 
)
WITH (DATA_COMPRESSION= PAGE)
GO

CREATE UNIQUE NONCLUSTERED INDEX IDX_Vehiculo_Matricula
ON dbo.Vehiculo(Matricula)
WITH (DATA_COMPRESSION = PAGE)
GO







