CREATE SCHEMA dimensional;

CREATE TABLE DIMENSIONAL.DIM_CLIENTE ( 
	sk_cliente           int  NOT NULL  AUTO_INCREMENT  PRIMARY KEY,
	nk_id_cliente        varchar(20),
	nm_cliente           varchar(100),
	nm_cidade_cliente    varchar(50),
	by_aceita_campanha   char(1),
	desc_cep             varchar(8)      
 );

CREATE TABLE DIMENSIONAL.DIM_LOCALIDADE ( 
	sk_localidade        int  NOT NULL  AUTO_INCREMENT  PRIMARY KEY,
	nk_id_localidade     varchar(20),
	nm_localidade        varchar(50),
	nm_cidade_localidade varchar(50),
	nm_regiao_localidade varchar(50)      
 );

CREATE TABLE DIMENSIONAL.DIM_PRODUTO ( 
	sk_produto           int  NOT NULL  AUTO_INCREMENT  PRIMARY KEY,
	nk_id_produto        varchar(20),
	desc_sku             varchar(50),
	nm_produto           varchar(50),
	nm_categoria_produto varchar(30),
	nm_marca_produto     varchar(30)      
 );

CREATE TABLE DIMENSIONAL.DIM_TEMPO ( 
	sk_data              int  NOT NULL PRIMARY KEY,
	data                 date,
	nr_ano               int,
	nr_mes               int,
	nr_dia               int,
	nr_trimestre         int,
	nr_semana            int,
	nm_dia_semana        varchar(10) NOT NULL,
	nm_mes               VARCHAR(10) NOT NULL,
	flag_feriado         CHAR(1) DEFAULT 'f',
	flag_fim_de_semana   CHAR(1) DEFAULT 'f',
	UNIQUE td_ymd_idx (nr_ano,nr_mes,nr_dia),
	UNIQUE td_data_idx (data)      
 );

CREATE TABLE DIMENSIONAL.FATO_VENDA ( 
	sk_cliente           int  NOT NULL,
	sk_produto           int  NOT NULL,
	sk_localidade        int  NOT NULL,
	sk_data              int  NOT NULL,
	valor_venda          decimal(5,2),
	quantidade_venda     int      ,
	CONSTRAINT pk_fato_venda PRIMARY KEY ( sk_cliente, sk_produto, sk_localidade, sk_data )
 );

ALTER TABLE dimensional.fato_venda ADD CONSTRAINT fk_fato_venda_dim_cliente FOREIGN KEY ( sk_cliente ) REFERENCES dimensional.dim_cliente( sk_cliente ) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE dimensional.fato_venda ADD CONSTRAINT fk_fato_venda_dim_produto FOREIGN KEY ( sk_produto ) REFERENCES dimensional.dim_produto( sk_produto ) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE dimensional.fato_venda ADD CONSTRAINT fk_fato_venda_dim_localidade FOREIGN KEY ( sk_localidade ) REFERENCES dimensional.dim_localidade( sk_localidade ) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE dimensional.fato_venda ADD CONSTRAINT fk_fato_venda_dim_tempo FOREIGN KEY ( sk_data ) REFERENCES dimensional.dim_tempo( sk_data ) ON DELETE CASCADE ON UPDATE CASCADE;

