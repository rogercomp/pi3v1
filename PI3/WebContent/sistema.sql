
CREATE DATABASE LANP;
USE LANP;

CREATE TABLE Endereco(
	codEndereco INT (10) unsigned PRIMARY KEY,
	logradouro VARCHAR (60),
	numero VARCHAR (20),
	complemento VARCHAR (30),
	bairro VARCHAR (60),
	CEP CHAR (8),
	Cidade VARCHAR (50),
	Estado CHAR (2)
);

CREATE TABLE Usuario(  
	codUsuario INT (10) unsigned PRIMARY KEY,
	codEndereco INT (10) unsigned,
    	nome VARCHAR (40),
    	senha VARCHAR (20),
    	email VARCHAR (50),
   	ativo BOOLEAN default "1",
FOREIGN KEY (codEndereco) references Endereco(codEndereco)
);

CREATE TABLE Categoria (
	CodCategoria INT (10) unsigned PRIMARY KEY,
	Nome VARCHAR (60)
);
    
CREATE TABLE Lancamento(
codLancamento INT (10) unsigned PRIMARY KEY,
descricao VARCHAR (50),
natureza CHAR (1),
observacao VARCHAR (100),
codCategoria INT (10) unsigned,
FOREIGN KEY (codCategoria) references Categoria(codCategoria)
);

CREATE TABLE ItemLancamento (
codItemLancamento INT (10) unsigned PRIMARY KEY,
codUsuario INT (10) unsigned,
codLancamento INT (10) unsigned,
DataVencimento DATETIME,
DataPagamento DATETIME,
Valor DECIMAL (13,2),
FOREIGN KEY (codUsuario) references Usuario(codUsuario),
FOREIGN KEY (codLancamento) references Lancamento(codLancamento)
);

 INSERT INTO Endereco(codEndereco,logradouro,numero,complemento,bairro,CEP,cidade,estado)
VALUES
(100,'Av. Floriano Peixoto','1810','Comércio','N.Sra. Aparecida','38400700','Uberlândia','MG'),
(200,'Av. Afonso Pena','1234','Apto 202','Brasil','38400466','Uberlândia','MG'),
(300,'Av. Cesário Alvim','345','Loja 3','Centro','38400456','Uberlândia','MG'),
(400,'Rua Gino Luchesi','138','Casa','Portal das Colinas','12516200','Guaratingueta','SP'),
(500,'Av. Brasil','3467','Apto 204 bl. 5','Umuarama','38400800','Uberlândia','MG'),
(600,'Rua Oito','345','casa','Umuarama','38400800','Uberlândia','MG'),
(700,'Rua Oliveira','356','Apto 202 bl. 3','Centro','38400800','Uberlândia','MG'),
(800,'Av. Brasil','3467','Apto 204 bl. 5','Abadia','38400800','Uberaba','MG'),
(900,'Av. dos Vinhedos','1200','Apto 201 bl. 9','Umuarama','38400800','Sao Paulo','SP'),
(000,'Av. Quaresma','34','Comercio','Planalto','38400800','Uberlândia','MG');

INSERT INTO Usuario(codUsuario,codEndereco,nome,senha,email,ativo)
VALUES
(1,'100','Joao Marcos','12345','juka.jms@gmail.com','1'),
(2,'200','Rogério Siqueira','123','rogercomp@gmail.com','1'),
(3,'300','Virgilio Cruvinel','123','virgilio@gmail.com','1');

INSERT INTO Categoria(codCategoria,nome)
VALUES
(1,'Despesas mensais'),
(2,'Investimentos'),
(3,'Impostos'),
(4,'Educação'),
(5,'Entretenimento');

INSERT INTO Lancamento(codLancamento,codCategoria,descricao,natureza,observacao)
VALUES
(010,'1','Aluguel','D','Terá 10% de reajuste a partir de janeiro'),
(020,'1','Combustível','D','Não ultrapassar R$ 150,00 por semana'),
(030,'1','Supermercado','D','Fazer compras domingo'),
(040, '2','Salário','C','Não gastar tudo'),
(050, '2','Venda do carro','C','Reduzir despesas'),
(060, '1','CEMIG','D','Reduzir o tempo no chuveiro'),
(070, '4', 'Curso de Ingles','D','Não atrasar o pagamento'),
(080, '5','Roupas','D','comprar somente à vista'),
(090, '3','IPTU','D','Despesa anual'),
(100, '3','Taxa Coleta de Lixo','D','Pagamento anual');


INSERT INTO ItemLancamento(codItemLancamento,DataVencimento,DataPagamento,Valor,codUsuario,codLancamento)
VALUES
(3,'2019-06-15','2019-06-18','400','1','010'), 
(4,'2019-06-05','2019-06-05','1000','2','020'),
(2,'2019-06-12','2019-06-05','200','2','020'); 

