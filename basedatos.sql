CREATE DATABASE IF NOT EXISTS master_python;
use master_python;

CREATE TABLE usuarios(
id          int(25) auto_increment not null,
nombre      varchar(100),
apellidos   varchar(255),
email       varchar(255)not null,
password    varchar(255)not null,
fecha       date not null,
CONSTRAIN pk_usuarios PRIMARY KEY(id)
CONSTRAIN uq_email UNIQUE(email)
)ENGINE=InnoDb;

CREATE TABLE notas(
id          int(25) auto_increment not null,
usuario_id  int(25) not null,
titulo      varchar(255) not null,
descriocion MEDIUMTEXT,
fecha       date not null,
CONSTRAIN pk_notas PRIMARY KEY(id),
CONSTRAIN fk_nota_usuario FOREIGN KEY(usuario_id) REFERENCES usuarios(id)
)ENGINE=InnoDb;