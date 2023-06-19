<h1>Softwares Instalados/ Utilizados:</h1>

 MySQL Workbench<br>
 MySQL Conector<br>
 DbSchema<br>
 Mircosoft Power BI<br>



Construção :

Vamos dar Início com DBSchema para parte de modelagem.

1. Conectando ao Banco.

A partir daqui vamos criar nosso modelo.

2. Construção do Modelo Lógico Transacional
3. 


![cb1.jpg](https://github.com/cleiton-fx/Construindo-um-Data-Warehouse-/blob/master/imagens/cb1.jpg)

![cb2.jpg](https://github.com/cleiton-fx/Construindo-um-Data-Warehouse-/blob/master/imagens/cb2.jpg)

![cb3.jpg](https://github.com/cleiton-fx/Construindo-um-Data-Warehouse-/blob/master/imagens/cb3.jpg)

4. Demonstração do Modelo em Formato PDF após finalização.
![cb4.jpg](https://github.com/cleiton-fx/Construindo-um-Data-Warehouse-/blob/master/imagens/cb4.jpg)


Na implementação relacional, os desenhos dimensionais são mapeados para um conjunto relacional de tabelas. Você pode implementar o design em a seguir dois métodos:

	
 Star schema

O que é um esquema de estrelas?

Um modelo de esquema estelar pode ser descrito como uma estrela simples: um a tabela central contém dados de fatos e várias tabelas irradiam para fora dela, conectado pelas chaves primária e estrangeira do banco de dados. Em um esquema de estrela implementação, o Warehouse Builder armazena os dados de dimensão em uma única tabela ou exibir para todos os níveis de dimensão.

Por exemplo, se você implementar a dimensão Produto usando um esquema em estrela, o Warehouse Builder usa uma única tabela para implementar todos os níveis na dimensão, como mostrado na captura de tela. Os atributos em todos os níveis são mapeados para colunas diferentes em uma única tabela chamada PRODUCT.

![modelo ss.jpg](https://github.com/cleiton-fx/Construindo-um-Data-Warehouse-/blob/master/imagens/modelo%20ss.jpg)

 Snowflake

 O que é um esquema de floco de neve?

O esquema do floco de neve representa um modelo dimensional que é também composto por um quadro de fatos central e um conjunto de dimensões constituintes tabelas que são posteriormente normalizadas em tabelas de subdimensões. Em um floco de neve implementação de esquema, o Warehouse Builder usa mais de uma tabela ou exibição para Armazene os dados de dimensão. Tabelas ou exibições de banco de dados separadas armazenam dados pertencentes a cada nível da dimensão.

A captura de tela exibe a implementação do floco de neve do Dimensão do produto. Cada nível na dimensão é mapeado para uma tabela diferente.

[Saiba mais detalhes..](https://www.oracle.com/webfolder/technetwork/tutorials/obe/db/10g/r2/owb/owb10gr2_gs/owb/lesson3/starandsnowflake.htm)

![modelo sf.jpg](https://github.com/cleiton-fx/Construindo-um-Data-Warehouse-/blob/master/imagens/modelo%20sf.jpg)

![modelo%20F.jpg](https://github.com/cleiton-fx/Construindo-um-Data-Warehouse-/blob/master/imagens/modelo%20F.jpg)

![MF.jpg](https://github.com/cleiton-fx/Construindo-um-Data-Warehouse-/blob/master/imagens/MF.jpg)

![MF2.jpg](https://github.com/cleiton-fx/Construindo-um-Data-Warehouse-/blob/master/imagens/MF2.jpg)

ETL

![ETL.jpg](https://github.com/cleiton-fx/Construindo-um-Data-Warehouse-/blob/master/imagens/ETL.jpg)

![etl2.jpg](https://github.com/cleiton-fx/Construindo-um-Data-Warehouse-/blob/master/imagens/etl2.jpg)



Conectando ao Power BI

![pb.jpg](https://github.com/cleiton-fx/Construindo-um-Data-Warehouse-/blob/master/imagens/pb.jpg)

Criação de um Dashboard apartir do DW

![final.jpg](https://github.com/cleiton-fx/Construindo-um-Data-Warehouse-/blob/master/imagens/final.jpg)


<h1>Conclusão</h1>


