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
    codTrabajadro int auto_increment,
	primary key (codTrabajadro),
    foreign key (codUsuario) references usuario(codUsuario)
		on update cascade on delete cascade
);

create table dispensadora(
	codDispensadora int auto_increment,
    tamanio enum ('grande','pequenia','mediana'),
    primary key (codDispensadora)
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
		on update cascade on delete no action
);

create table pedido(
	codPedido int auto_increment,
    codCliente int,
    codTrabajador int,
    codDispensadora int,
    primary key (codPedido),
    foreign key (codCliente) references cliente(codCliente)
		on update cascade on delete cascade,
	foreign key (codTrabajador) references trabajador(codTrabajadro)
		on update cascade on delete cascade,
	foreign key (codDispensadora) references dispensadora(codDispensadora)
		on update cascade on delete no action
);