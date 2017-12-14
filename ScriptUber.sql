CREATE DATABASE uber
use uber

CREATE TABLE TipoServidorUber(
	idtiposervidorUber INT(5) not null primary key auto_increment,
	nombre VARCHAR(125) NOT NULL
)ENGINE=INNODB;

CREATE TABLE ServidorUber(
	idservidorUber INT(10) AUTO_INCREMENT NOT NULL PRIMARY KEY,
	nombre VARCHAR(125) NOT NULL,
	fechaNac date not null,
	punteo int(10) not null,
	idtiposervidor int(5),
	CONSTRAINT FK_tiposervidor FOREIGN KEY(idtiposervidor) REFERENCES TipoServidorUber(idtiposervidorUber)	
)ENGINE=INNODB;

CREATE TABLE Usuario(
	idUsuario INT(10) AUTO_INCREMENT NOT NULL PRIMARY KEY,
	nombre VARCHAR(125) NOT NULL,
	fechaNac date not null,
	punteo int(10) not null,
	viajes int(5) not null
)ENGINE=INNODB;

CREATE TABLE Vehiculo(
	idVehiculo INT(10) AUTO_INCREMENT NOT NULL PRIMARY KEY,
	marca VARCHAR(125) NOT NULL,
	aniomodelo int(5) not null,
	descripcion VARCHAR(125) NOT NULL,
	categoria VARCHAR(125) NOT NULL,
	capaciadad int(5) not null,
	idservidoruber int(5) not null,
	CONSTRAINT FK_tiposervidor FOREIGN KEY(idservidoruber) REFERENCES ServidorUber(idservidorUber)
)ENGINE=INNODB;


CREATE TABLE Bicicleta(
	idbicicleta INT(10) AUTO_INCREMENT NOT NULL PRIMARY KEY,
	tipo VARCHAR(125) NOT NULL,
	descripcion VARCHAR(125),
	idservidoruber int(5) not null,
	CONSTRAINT FK_tiposervidor FOREIGN KEY(idservidoruber) REFERENCES ServidorUber(idservidorUber)
)ENGINE=INNODB;


CREATE TABLE RegistroUberX(
	idRegistrouberx INT(10) AUTO_INCREMENT NOT NULL PRIMARY KEY,
	idservidoruber int(5) not null,
	idusuario int(5) not null,
	inicio VARCHAR(125) NOT NULL,
	destino VARCHAR(125) NOT NULL,
	distancia int(5) not null,
	costo int(5) not null,
	fecha date not null,
	CONSTRAINT FK_servidoruber FOREIGN KEY(idservidoruber) REFERENCES ServidorUber(idservidorUber),
	CONSTRAINT FK_usuario FOREIGN KEY(idusuario) REFERENCES Usuario(idusuario)	
)ENGINE=INNODB;


CREATE TABLE RegistroUberRush(
	idRegistrouberRush INT(10) AUTO_INCREMENT NOT NULL PRIMARY KEY,
	idservidoruber int(5) not null,
	idusuario int(5) not null,
	inicio VARCHAR(125) NOT NULL,
	destino VARCHAR(125) NOT NULL,
	distancia int(5) not null,
	costo int(5) not null,
	fecha date not null,
	CONSTRAINT FK_servidoruber FOREIGN KEY(idservidoruber) REFERENCES ServidorUber(idservidorUber),
	CONSTRAINT FK_usuario FOREIGN KEY(idusuario) REFERENCES Usuario(idusuario)	
)ENGINE=INNODB;

CREATE TABLE RegistroUberBlack(
	idRegistrouberBlack INT(10) AUTO_INCREMENT NOT NULL PRIMARY KEY,
	idservidoruber int(5) not null,
	idusuario int(5) not null,
	inicio VARCHAR(125) NOT NULL,
	destino VARCHAR(125) NOT NULL,
	distancia int(5) not null,
	costo int(5) not null,
	fecha date not null,
	CONSTRAINT FK_servidoruber FOREIGN KEY(idservidoruber) REFERENCES ServidorUber(idservidorUber),
	CONSTRAINT FK_usuario FOREIGN KEY(idusuario) REFERENCES Usuario(idusuario)	
)ENGINE=INNODB;

CREATE TABLE RegistroUberSUV(
	idRegistrouberSUV INT(10) AUTO_INCREMENT NOT NULL PRIMARY KEY,
	idservidoruber int(5) not null,
	idusuario int(5) not null,
	inicio VARCHAR(125) NOT NULL,
	destino VARCHAR(125) NOT NULL,
	distancia int(5) not null,
	costo int(5) not null,
	fecha date not null,
	CONSTRAINT FK_servidoruber FOREIGN KEY(idservidoruber) REFERENCES ServidorUber(idservidorUber),
	CONSTRAINT FK_usuario FOREIGN KEY(idusuario) REFERENCES Usuario(idusuario)	
)ENGINE=INNODB;


CREATE TABLE RegistroUberXL(
	idRegistrouberxl INT(10) AUTO_INCREMENT NOT NULL PRIMARY KEY,
	idservidoruber int(5) not null,
	idusuario int(5) not null,
	inicio VARCHAR(125) NOT NULL,
	destino VARCHAR(125) NOT NULL,
	distancia int(5) not null,
	costo int(5) not null,
	fecha date not null,
	CONSTRAINT FK_servidoruber FOREIGN KEY(idservidoruber) REFERENCES ServidorUber(idservidorUber),
	CONSTRAINT FK_usuario FOREIGN KEY(idusuario) REFERENCES Usuario(idusuario)	
)ENGINE=INNODB;

CREATE TABLE RegistroUberVIP(
	idRegistroubervip INT(10) AUTO_INCREMENT NOT NULL PRIMARY KEY,
	idservidoruber int(5) not null,
	idusuario int(5) not null,
	inicio VARCHAR(125) NOT NULL,
	destino VARCHAR(125) NOT NULL,
	distancia int(5) not null,
	costo int(5) not null,
	fecha date not null,
	CONSTRAINT FK_servidoruber FOREIGN KEY(idservidoruber) REFERENCES ServidorUber(idservidorUber),
	CONSTRAINT FK_usuario FOREIGN KEY(idusuario) REFERENCES Usuario(idusuario)	
)ENGINE=INNODB;

CREATE TABLE RegistroUberAngel(
	idRegistrouberangel INT(10) AUTO_INCREMENT NOT NULL PRIMARY KEY,
	idservidoruber int(5) not null,
	idusuario int(5) not null,
	inicio VARCHAR(125) NOT NULL,
	destino VARCHAR(125) NOT NULL,
	distancia int(5) not null,
	costo int(5) not null,
	fecha date not null,
	CONSTRAINT FK_servidoruber FOREIGN KEY(idservidoruber) REFERENCES ServidorUber(idservidorUber),
	CONSTRAINT FK_usuario FOREIGN KEY(idusuario) REFERENCES Usuario(idusuario)	
)ENGINE=INNODB;

CREATE TABLE RegistroUberUnderage(
	idRegistrouberunderage INT(10) AUTO_INCREMENT NOT NULL PRIMARY KEY,
	idservidoruber int(5) not null,
	idusuario int(5) not null,
	inicio VARCHAR(125) NOT NULL,
	destino VARCHAR(125) NOT NULL,
	distancia int(5) not null,
	costo int(5) not null,
	fecha date not null,
	CONSTRAINT FK_servidoruber FOREIGN KEY(idservidoruber) REFERENCES ServidorUber(idservidorUber),
	CONSTRAINT FK_usuario FOREIGN KEY(idusuario) REFERENCES Usuario(idusuario)	
)ENGINE=INNODB;

CREATE TABLE RegistroUberBici(
	idRegistrouberbici INT(10) AUTO_INCREMENT NOT NULL PRIMARY KEY,
	idbicicleta int(5) not null,
	idusuario int(5) not null,
	costo int(5) not null,
	fecha date not null,
	CONSTRAINT FK_bicicleta FOREIGN KEY(idbicicleta) REFERENCES Bicicleta(idbicicleta),
	CONSTRAINT FK_usuario FOREIGN KEY(idusuario) REFERENCES Usuario(idusuario)	
)ENGINE=INNODB;