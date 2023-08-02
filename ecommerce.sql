-- Primeiro Projeto Lógico de Banco de Dados: Banco de Dados E-commerce

create database ecommerce;
use ecommerce;

-- Tabela Cliente

create table client(
	idClient int auto_increment primary key,
    Fname varchar(10),
    Minit char(20),
    Lname varchar(20),
    CPF char(11) not null,
    Address varchar(40),
    constraint unique_cpf_client unique (CPF)
);

-- Tabela Produto

create table product(
	idProduct int auto_increment primary key,
    Pname varchar(10),
    Classification_kids bool default false,
    category enum('Alimentos','Eletronicos','Moveis','Roupas','Tecnologias') not null,
    evaluation float default 0,
    size varchar(10)
);

-- Tabela Meios de Pagamento

create table payments(
	idClient int,
    idPayment int,
    typePayment enum ('Boleto','Debito','Crédito'),
    limitAvailable float,
    primary key(idClient, idPayment)
);

-- Tabela Pedido

create table orders(
	idOrder int auto_increment primary key,
    idOrderClient int,
    orderStatus enum('Cancelado','Confirmado','Em Processamento') default 'Em processamento',
    orderDescription varchar(255),
    freight float default 10,
    paymentCash bool default false,
    constraint fk_orders_client foreign key (idOrderClient) references client(idClient)
);

desc orders;

-- Tabela Estoque

create table productStorage(
	idProdStorage int auto_increment primary key,
    storageLocation varchar (255),
    quantity int default 0
);

desc productStorage;

-- Tabela Fornecedor

create table supplier(
	idSuppleir int auto_increment primary key,
    SocialName varchar (255) not null,
    CNPJ char (14) not null,
    contact char (11) not null,
    constraint unique_supplier unique (CNPJ)
);

-- Tabela Vendedor

create table seller(
	idSeller int auto_increment primary key,
    SocialName varchar (255) not null,
    AbstName varchar (255),
    CNPJ char (14),
    CPF char (9),
    location varchar (255),
    contact char (11) not null,
    constraint unique_cnpj_supplier unique (CNPJ),
    constraint unique_cpf_supplier unique (CPF)
);

-- Tabela Produto Vendedor

create table productSeller(
	idProductSeller int,
    idPproduct int,
    prodQuantity int default 1,
    primary key (idProductSeller,idPproduct),
    constraint fk_product_seller foreign key (idProductSeller) references seller(idSeller),
    constraint fk_product_product foreign key (idPproduct) references product(idProduct)
);

-- Tabela Produto Pedido

create table productOrder(
	idPOproduct int,
    idPOorder int,
    poQuantity int default 1,
    poStatus enum ('Disponível','Indisponível') default 'Disponível',
	primary key (idPOproduct, idPOorder),
    constraint fk_productorder_seller foreign key (idPOproduct) references product(idProduct),
    constraint fk_productorder_product foreign key (idPOorder) references orders (idOrder)
);

-- Tabela Localização Estoque

create table storageLocation(
	idLproduct int,
    idLstorage int,
    location varchar (255) not null,
    primary key (idLproduct, idLstorage),
    constraint fk_storange_location_product foreign key (idLproduct) references product (idProduct),
    constraint fk_storange_location_storange foreign key (idLstorage) references productStorage (idProdStorage)
);

-- Tabela Produto Fornecedor

create table productSupplier(
	idPsSupplier int,
    idPsProduct int,
    Quantity int not null,
    primary key (idPsSupplier, idPsProduct),
    constraint fk_product_supplier_supplier foreign key (idPsSupplier) references supplier (idSuppleir),
    constraint fk_product_supplier_product foreign key (idPsProduct) references product (idProduct)
);







