-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE ATRACAO (
ID_Atracao INTEGER PRIMARY KEY,
ID_Destino Número(4),
nome VARCHAR(20),
tipo VARCHAR(20),
descricao VARCHAR(300),
preco_ingresso DECIMAL()/*falha: chave estrangeira*/
)

CREATE TABLE HOSPEDAGEM (
ID_Hospedagem INTEGER PRIMARY KEY,
ID_Destino Número(4),
ID_Endereco Número(4),
nome VARCHAR(50),
classificacao INTEGER,
preco_base_diaria DECIMAL(),
facilidades VARCHAR(300)/*falha: chave estrangeira*//*falha: chave estrangeira*/
)

CREATE TABLE CLIENTE (
ID_Cliente INTEGER PRIMARY KEY,
ID_Endereco Número(4),
nome VARCHAR(100),
e-mail VARCHAR(100),
cpf VARCHAR(11),
telefone VARCHAR(11)
)

CREATE TABLE DESTINO (
ID_Destino INTEGER PRIMARY KEY,
cidade VARCHAR(20),
pais VARCHAR(20),
descricao VARCHAR(300),
clima VARCHAR(20),
melhor_epoca VARCHAR(50)
)

CREATE TABLE ENDERECO (
ID_Endereco INTEGER PRIMARY KEY,
rua VARCHAR(20),
numero VARCHAR(20),
cidade VARCHAR(20),
estado VARCHAR(20),
bairro VARCHAR(20),
cep INTEGER,
uf VARCHAR(2)
)

CREATE TABLE RESERVA_PACOTE (
ID_Reserva_pacote INTEGER PRIMARY KEY,
ID_Reserva Número(4),
ID_Pacote Número(4),
quantidade INTEGER,
preco_unitario DECIMAL(),
subtotal DECIMAL()
)

CREATE TABLE RESERVA (
ID_Reserva INTEGER PRIMARY KEY,
ID_Cliente Número(4),
data_reserva SMALLDATETIME,
valor_total DECIMAL(),
status VARCHAR(10),
forma_pagamento VARCHAR(15),
FOREIGN KEY(ID_Cliente) REFERENCES CLIENTE (ID_Cliente)
)

CREATE TABLE PACOTE_DESTINO (
ID_Pacote_destino INTEGER PRIMARY KEY,
ID_Pacote Número(4),
ID_Destino Número(4),
estadia_dias INTEGER,
roteiro_ordem INTEGER/*falha: chave estrangeira*//*falha: chave estrangeira*/
)

CREATE TABLE TRANSPORTE (
ID_Transporte INTEGER PRIMARY KEY,
tipo VARCHAR(10),
empresa VARCHAR(20),
classe VARCHAR(20),
preco_base DECIMAL()
)

CREATE TABLE PACOTE (
ID_Pacote INTEGER PRIMARY KEY,
nome VARCHAR(20),
descricao VARCHAR(200),
duracao_dias INTEGER,
preco_base DECIMAL(),
tipo_pacote VARCHAR(10)
)

CREATE TABLE TRANSPORTE_PACOTE (
ID_Transporte_pacote INTEGER PRIMARY KEY,
ID_Pacote Número(4),
ID_Transporte Número(4),
subtotal DECIMAL(),
duracao_dias INTEGER,
FOREIGN KEY(ID_Pacote) REFERENCES PACOTE (ID_Pacote)/*falha: chave estrangeira*/
)

ALTER TABLE CLIENTE ADD FOREIGN KEY(ID_Endereco) REFERENCES ENDERECO (ID_Endereco)
ALTER TABLE RESERVA_PACOTE ADD FOREIGN KEY(ID_Reserva) REFERENCES RESERVA (ID_Reserva)
ALTER TABLE RESERVA_PACOTE ADD FOREIGN KEY(ID_Pacote) REFERENCES PACOTE (ID_Pacote)
