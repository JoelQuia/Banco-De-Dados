/*criando banco*/
create database Empresaroupa;
use Empresaroupa;

/*crando tabelas*/
create table Cliente(
    idCliente int primary key auto_increment,
    nome varchar(100) not null,
    cpf varchar(11) not null,
    email varchar(100) not null,
    telefone varchar(11) not null
);

create table Produto(
    idProduto int primary key auto_increment,
    nome varchar(100) not null,
    descricao varchar(100) not null,
    preco decimal(10,2) not null
);

create table Pedido(
    idPedido int primary key auto_increment,
    idCliente int not null,
    dataPedido date not null,
    dataEntrega date not null,
    valorTotal decimal(10,2) not null,
    statusPedido varchar(100) not null,
    /*conectando com a tabela cliente através da chave estrangeira*/
    foreign key (idCliente) references Cliente(idCliente)
);

create table ItemPedido(
    idItemPedido int primary key auto_increment,
    idPedido int not null,
    idProduto int not null,
    quantidade int not null,
    valorUnitario decimal(10,2) not null,
    /*conectando com as tabela pedido e produto */
    foreign key (idPedido) references Pedido(idPedido),
    foreign key (idProduto) references Produto(idProduto)
);
