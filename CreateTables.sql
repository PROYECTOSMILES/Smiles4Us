DROP TABLE usuario CASCADE;
DROP TABLE portafolio CASCADE;
DROP TABLE carpeta CASCADE;
DROP TABLE post CASCADE;
DROP TABLE categoria CASCADE;
DROP TABLE tipo_notificacion CASCADE;
DROP TABLE notificacion CASCADE;
DROP TABLE smile CASCADE;
DROP TABLE seguidor_por_usuario CASCADE;
DROP TABLE subscripcion_por_usuario CASCADE;
DROP TABLE comentario CASCADE;

CREATE TABLE usuario
(
	id INTEGER PRIMARY KEY NOT NULL,
	nombre VARCHAR(20) NOT NULL,
	apellido VARCHAR(20) NOT NULL,
	nombre_usuario VARCHAR(40) NOT NULL,
	contraseña VARCHAR(40) NOT NULL,
	email VARCHAR(40) NOT NULL,
	numero_seguidores INTEGER NOT NULL,
	numero_subscripciones INTEGER NOT NULL,
	numero_telefono INTEGER,
	foto_perfil BYTEA
);

CREATE TABLE portafolio
(
	id INTEGER PRIMARY KEY NOT NULL,
	descripcion VARCHAR(20) NOT NULL
);

CREATE TABLE carpeta
(
	id INTEGER PRIMARY KEY NOT NULL,
	nombre VARCHAR(20) NOT NULL
);

CREATE TABLE post
(
	id INTEGER PRIMARY KEY NOT NULL,
	descripcion VARCHAR(40) NOT NULL,
	imagen BYTEA NOT NULL,
	fecha DATE NOT NULL,
	hora TIME NOT NULL,
	numero_smiles INTEGER NOT NULL,
	numero_subscripciones INTEGER NOT NULL
);

CREATE TABLE categoria
(
	id INTEGER PRIMARY KEY NOT NULL,
	nombre VARCHAR(20)
);

CREATE TABLE tipo_notificacion
(
	id INTEGER PRIMARY KEY NOT NULL,
	descripcion VARCHAR(20) NOT NULL
);

CREATE TABLE notificacion
(
	id INTEGER PRIMARY KEY NOT NULL,
	tipo INTEGER REFERENCES tipo_notificacion(id) NOT NULL
);

CREATE TABLE smile
(
	usuario INTEGER REFERENCES usuario(id) NOT NULL,
	post INTEGER REFERENCES post(id) NOT NULL
);

CREATE TABLE seguidor_por_usuario
(
	usuario INTEGER PRIMARY KEY REFERENCES usuario(id) NOT NULL,
	seguidor INTEGER REFERENCES usuario(id) NOT NULL
);

CREATE TABLE subscripcion_por_usuario
(
	usuario INTEGER PRIMARY KEY REFERENCES usuario(id) NOT NULL,
	subscripcion INTEGER REFERENCES usuario(id) NOT NULL
);

CREATE TABLE comentario
(
	id INTEGER PRIMARY KEY NOT NULL,
	usuario INTEGER REFERENCES usuario(id) NOT NULL,
	mensaje VARCHAR NOT NULL,
	fecha DATE NOT NULL
);