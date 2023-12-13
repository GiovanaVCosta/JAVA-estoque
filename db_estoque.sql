create schema Estoque_att4;

use Estoque_att4;

create table clientes(
id_cliente int auto_increment primary key not null,
nome varchar(300) not null,
cpf bigint not null,
email varchar(300) not null, 
telefone bigint not null
);

create table produtos(
id_produto int auto_increment primary key not null,
nome_produto varchar(100) not null,
quantidade_estoque int not null,
valor double not null,
fornecedor varchar(70) not null
);

create table compras (
    id_compra int auto_increment primary key not null,
    id_cliente int not null,
    id_produto int not null,
    quantidade_comprada int not null,
    data_compra date not null,
    
    foreign key (id_cliente) references clientes (id_cliente),
    foreign key (id_produto) references produtos (id_produto)
);


insert into clientes (id_cliente, nome, cpf, email, telefone) values 
(0, "Giovana Viera ", 12345, "giovana@gmail.com", 098765 ),
(1, "Julia Paiva", 54321, "paivas@gmail.com", 65432),
(2, "Yasmin Targino", 56789, "yasT@gmail.com", 87654),
(3, "Mineiro", 98765, "mineiro@gmail.com", 8713),
(4, "Igor", 55555, "igor@gmail.com", 12334);


insert into produtos (nome_produto, quantidade_estoque, valor, fornecedor) values 
("HD", 50, 70.00, "Seagate"),
("Monitor", 20, 69.99, "AOC"),
("Mous", 100, 87.99, "Logitech"),
("Teclado", 50, 79.99, "Corsair"),
("SSD", 30, 43.99, "Samsung");





