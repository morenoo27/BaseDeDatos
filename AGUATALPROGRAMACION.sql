create database if not exists aguatalProgramacion;
use aguatalProgramacion;

create table usuario(
	codUsuario int auto_increment,
    nombreUsuario varchar(50),
    apellidosUsuario varchar(50),
    dirUsuario varchar(100),
    email varchar(50),
    primary key (codUsuario)
);

create table cliente(
	codUsuario int,
    codCliente int auto_increment,
    primary key (codCliente),
    foreign key (codUsuario) references usuario(codUsuario)
		on update cascade on delete cascade
);

create table trabajador(
	codUsuario int,
    conTrabajadro int auto_increment,
	primary key (conTrabajadro),
    foreign key (codUsuario) references usuario(codUsuario)
		on update cascade on delete cascade
);

create table suscripcion(
	codCliente int,
    codSuscripcion int auto_increment,
    codDispensadora int,
    precioMensual decimal,
    primary key (codSuscripcion),
    foreign key (codCliente) references cliente(codCliente)
		on update cascade on delete cascade,
	foreign key (codDispensadora) references dispensadora(codDispensadora)
);