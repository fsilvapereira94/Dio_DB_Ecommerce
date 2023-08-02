-- Populando Tabela Cliente

insert into client (Fnome, Minit, LName, CPF, Address)
values
    ('João', 'A', 'Silva', '11111111111', 'Rua dos Lírios, 123'),
    ('Maria', 'B', 'Santos', '22222222222', 'Avenida das Rosas, 456'),
    ('Pedro', 'C', 'Almeida', '33333333333', 'Travessa das Flores, 789'),
    ('Ana', 'D', 'Oliveira', '44444444444', 'Rua das Árvores, 321'),
    ('Lucas', 'E', 'Pereira', '55555555555', 'Avenida das Pedras, 654');
    
    -- Populando Tabela Produtos
    
insert into product (Pname, Classification_kids, category, evaluation, size)
values
    ('Smartphone', false, 'eletrônico', 4.5, 'Grande'),
    ('Camiseta', true, 'vestuário', 3.8, 'M'),
    ('Boneca', true, 'brinquedos', 4.2, 'Pequeno'),
    ('Notebook', false, 'eletrônico', 4.1, 'Médio'),
    ('Bola', true, 'brinquedos', 3.9, 'Único');

-- Populando Tabela Pagamento

insert into payments (idPayment, idClient, typePayment, limitAvaliable)
values
    (1, 5, 'Boleto', 500),
    (2, 2, 'Debito', 1000),
    (3, 3, 'Debito', 800),
    (4, 4, 'Crédito', 300),
    (5, 5, 'Boleto', 750);

-- Populando Tabela Pedido

insert into orders (idOrderClient, orderStatus, orderDescription, freight, paymentCash, idPayment)
values
    (1, 'Processando', 'Pedido 1', 12.5, true, 1),
    (2, 'confirmado', 'Pedido 2', 8.0, false, 2),
    (3, 'cancelado', 'Pedido 3', 15.2, false, 3),
    (4, 'confirmado', 'Pedido 4', 10.0, true, 4),
    (5, 'Processando', 'Pedido 5', 20.0, false, 5);

-- Populando Tabela Estoque

insert into productStorage (idProdStorage, storageLocation, quantity)
values
    (1, 'Estoque 1', 100),
    (2, 'Estoque 2', 50),
    (3, 'Estoque 3', 200),
    (4, 'Estoque 4', 75),
    (5, 'Estoque 5', 300);

-- Populando Tabela Fornecedor

insert into Supplier (idSupplier, CNPJ, socialName, contact)
values
    (1, '11111111111111', 'Fornecedor 1 Ltda.', '11111111111'),
    (2, '22222222222222', 'Fornecedor 2 S/A', '22222222222'),
    (3, '33333333333333', 'Fornecedor 3 EIRELI', '33333333333'),
    (4, '44444444444444', 'Fornecedor 4 MEI', '44444444444'),
    (5, '55555555555555', 'Fornecedor 5 LTDA', '55555555555');

-- Populando Tabela Vendedor

insert into seller (idSeller, CNPJ, CPF, SocialName, AbstName, contact, location)
values
    (1, '111111111', '111111111', 'Vendedor 1', 'Vendedor A', '11111111111', 'Rua X, 789'),
    (2, '222222222', '222222222', 'Vendedor 2', 'Vendedor B', '22222222222', 'Avenida Y, 456'),
    (3, '333333333', '333333333', 'Vendedor 3', 'Vendedor C', '33333333333', 'Rua Z, 123'),
    (4, '444444444', '444444444', 'Vendedor 4', 'Vendedor D', '44444444444', 'Rua W, 987'),
    (5, '555555555', '555555555', 'Vendedor 5', 'Vendedor E', '55555555555', 'Avenida V, 654');

-- Populando Tabela Produto Vendedor

insert into productSeller (idProductSeller, idPproduct, prodQuantity)
values
    (1, 1, 10),
    (2, 1, 5),
    (3, 2, 8),
    (4, 2, 15),
    (5, 3, 3);

-- Populando Tabela Produto Pedido

insert into productOrder (idPOproduct, idPOorder, poQuantity, poStatus)
values
    (1, 1, 2, 'confirmado'),
    (2, 1, 1, 'cancelado'),
    (3, 2, 3, 'confirmado'),
    (4, 2, 1, 'Processando'),
    (5, 3, 5, 'confirmado');

-- Populando Tabela Localização Estoque

insert into storageLocation (idLproduct, idLstorage, location)
values
    (1, 1, 'Estoque 1, Prateleira A'),
    (2, 2, 'Estoque 2, Prateleira B'),
    (3, 3, 'Estoque 3, Prateleira C'),
    (4, 4, 'Estoque 4, Prateleira D'),
    (5, 5, 'Estoque 5, Prateleira E');

-- Populando Tabela Produto Fornecedor

insert into productSupplier (idPsSupplier, idPsProduct, Quantity)
values
    (1, 1, 50),
    (2, 1, 100),
    (3, 2, 30),
    (4, 3, 70),
    (5, 3, 40);