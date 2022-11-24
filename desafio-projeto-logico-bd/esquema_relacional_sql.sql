-- criação do banco de dados para o cenário de E-commerce
create database ecommerce;
use ecommerce;

-- criar tabela cliente
create table clients(
	idClient int auto_increment primary key,
    Fname varchar(10),
    Minit char(3),
    Lname varchar(20),
    CPF char(11) not null,
    Address varchar(30),
    constraint unique_cpf_client unique(CPF)
);

ALTER TABLE clients auto_increment=1;

desc clients;

-- criar tabela produto
-- size = dimensão do produto
create table product(
	idProduct int auto_increment primary key,
    Pname varchar(10) not null,
    Classification_kids bool default false,
    Category enum('Eletronico','Textil','Brinquedos','Alimentos','Moveis') not null,
    PDescription varchar(45),
    Avaliation float default 0,
    Size varchar(10),
    Valor float
);

desc product;


-- criar tabela de pagamento

-- para ser continuado no desafio: termine de implementar a tabela e crie a conexão com as tabelas necessárias
-- além disso, reflita essa modificação no diagrama de esquema relacional
-- criar constraints relacionadas ao pagamento
create table payments(
	idClient int,
    idPayment int,
    TypePayment enum('Boleto','Cartao', 'Dois cartoes','Pix'),
    LimitAvailable float,
    primary key(idClient, idPayment)
);

-- criar tabela pedido
create table orders(
	idOrder int auto_increment primary key,
    idOrderClient int,
    OrderStatus enum('Cancelado','Confirmado', 'Em processamento') default 'Em processamento',
    OrderDescription varchar(255),
    Shipping float default 10,
    PaymentCash bool default false,
    constraint fk_orders_client foreign key (idOrderClient) references clients(idClient)
    	ON UPDATE CASCADE 
);

desc orders;

-- criar tabela estoque
create table productStorage(
	idProdStorage int auto_increment primary key,
	StorageLocation varchar(255),
	Quantity int default 0
);

desc productStorage;

-- criar tabela fornecedor
create table supplier(
	idSupplier int auto_increment primary key,
	SocialName varchar(255) not null,
	CNPJ char(15) not null,
	Contact char(11) not NULL,
	constraint unique_supplier unique(CNPJ)
);

desc supplier;

-- criar tabela vendedor
create table seller(
	idSeller int auto_increment primary key,
	SocialName varchar(255) not null,
	AbstractName varchar(255),
	CNPJ char(15),
	CPF char(9),
	Location varchar(255),
	Contact char(11) not NULL,
	constraint unique_cnpj_seller unique(CNPJ),
	CONSTRAINT unique_cpf_seller unique(CPF)
);

desc seller;

-- criar tabela de produto-vendedor
CREATE TABLE productSeller(
	idProductSeller int,
	idPProduct int,
	ProductQuantity int DEFAULT 1,
	PRIMARY KEY (idProductSeller,idPProduct),
	CONSTRAINT fk_product_seller FOREIGN KEY (idProductSeller) REFERENCES seller(idSeller),
	CONSTRAINT fk_product_product FOREIGN KEY (idPProduct) REFERENCES product(idProduct)
);

desc productSeller;

-- criar tabela de ordem de produto
CREATE TABLE productOrder(
	idProductOProduct int,
	idProductOOrder int,
	ProductQuantity int DEFAULT 1,
	ProductStatus enum('Disponivel', 'Sem estoque') DEFAULT 'Disponivel',
	PRIMARY KEY (idProductOProduct,idProductOOrder),
	CONSTRAINT fk_productorder_seller FOREIGN KEY (idProductOProduct) REFERENCES product(idProduct),
	CONSTRAINT fk_productorder_product FOREIGN KEY (idProductOOrder) REFERENCES orders(idOrder)
);

desc productOrder;

-- criar tabela de produto em estoque
CREATE TABLE storageLocation(
	idLocationProduct int,
	idLocationStorage int,
	Location varchar(255) NOT NULL,
	PRIMARY KEY (idLocationProduct,idLocationStorage),
	CONSTRAINT fk_storage_location__product FOREIGN KEY (idLocationProduct) REFERENCES product(idProduct),
	CONSTRAINT fk_storage__location_storage FOREIGN KEY (idLocationStorage) REFERENCES productStorage(idProdStorage)
);

desc storageLocation;

-- criar tabela de produto fornecedor
create table productSupplier(
	idPsSupplier int,
	idPsProduct int,
	Quantity int not null,
	primary key (idPsSupplier, idPsProduct),
	constraint fk_product_supplier_supplier foreign key (idPsSupplier) references supplier(idSupplier),
	constraint fk_product_supplier_product foreign key (idPsProduct) references product(idProduct)
);

desc productSupplier;

show tables;