CREATE SCHEMA dimensional;

CREATE TABLE dimensional.dim_cliente ( 
	sk_cliente           int  NOT NULL  PRIMARY KEY,
	nk_id_cliente        varchar(20),
	nm_cliente           varchar(100),
	nm_cidade_cliente    varchar(50),
	by_aceita_campanha   binary(1),
	desc_cep             varchar(8)      
 );

CREATE TABLE dimensional.dim_localidade ( 
	sk_localidade        int  NOT NULL    PRIMARY KEY,
	nk_id_localidade     varchar(20)      ,
	nm_localidade        varchar(50)      ,
	nm_cidade_localidade varchar(50)      ,
	nm_regiao_localidade varchar(50)      
 ) engine=InnoDB;

CREATE TABLE dimensional.dim_produto ( 
	sk_produto           int  NOT NULL    PRIMARY KEY,
	nk_id_produto        varchar(20)      ,
	desc_sku             varchar(50)      ,
	nm_produto           varchar(50)      ,
	nm_categoria_produto varchar(30)      ,
	nm_marca_produto     varchar(30)      
 ) engine=InnoDB;

CREATE TABLE dimensional.dim_tempo ( 
	sk_data              int  NOT NULL    PRIMARY KEY,
	data                 date      ,
	desc_data_completa   varchar(50)      ,
	nr_ano               int      ,
	nm_trimestre         int      ,
	nr_mes               int      ,
	nm_mes               varchar(10)      ,
	nr_semana            int      ,
	nm_ano_semana        varchar(20)      ,
	nr_dia               int      ,
	nm_dia_semana        varchar(10)      ,
	flag_feriado         char(3)      ,
	nm_feriado           varchar(20)      
 ) engine=InnoDB;

CREATE TABLE dimensional.fato_venda ( 
	sk_cliente           int  NOT NULL    ,
	sk_produto           int  NOT NULL    ,
	sk_localidade        int  NOT NULL    ,
	sk_data              int  NOT NULL    ,
	valor_venda          decimal(5,2)      ,
	quantidade_venda     int      ,
	CONSTRAINT pk_fato_venda PRIMARY KEY ( sk_cliente, sk_produto, sk_localidade, sk_data )
 ) engine=InnoDB;

ALTER TABLE dimensional.fato_venda ADD CONSTRAINT fk_fato_venda_dim_cliente FOREIGN KEY ( sk_cliente ) REFERENCES dimensional.dim_cliente( sk_cliente ) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE dimensional.fato_venda ADD CONSTRAINT fk_fato_venda_dim_produto FOREIGN KEY ( sk_produto ) REFERENCES dimensional.dim_produto( sk_produto ) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE dimensional.fato_venda ADD CONSTRAINT fk_fato_venda_dim_localidade FOREIGN KEY ( sk_localidade ) REFERENCES dimensional.dim_localidade( sk_localidade ) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE dimensional.fato_venda ADD CONSTRAINT fk_fato_venda_dim_tempo FOREIGN KEY ( sk_data ) REFERENCES dimensional.dim_tempo( sk_data ) ON DELETE CASCADE ON UPDATE CASCADE;

