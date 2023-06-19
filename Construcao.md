<h1>Softwares Instalados/ Utilizados:</h1>

 - MySQL Workbench<br>
 - MySQL Conector<br>
 - DbSchema<br>
 - Microsoft Power BI<br>



Construção :

Vamos dar Início com DBSchema para parte de modelagem de forma bem resumida

1.<b>Construção do Modelo Lógico Transacional</b>
<br>
A criação do modelo será com base nos dados fornecidos, interpretando os dados requeridos iremos dar início a parte lógica.
De Início irei conectando ao Banco e criando cada uma das entidades, veja abaixo a conectando o DBschema ao Banco e dando início a Criação de cada tabela.
 


![cb1.jpg](https://github.com/cleiton-fx/Construindo-um-Data-Warehouse-/blob/master/imagens/cb1.jpg)

2. Criando cada tabela, definindo cada campo corretamente.
<br>   
 Note também que foi inserido um ID para cada um deles, determinando assim como chave primária.

![cb2.jpg](https://github.com/cleiton-fx/Construindo-um-Data-Warehouse-/blob/master/imagens/cb2.jpg)

3. O resultado após a criação de cada uma das tabelas, definições de chaves estrangeiras, primária e relacionamentos é este .. onde tudo é discutido corretamente para que não haja problemas entre os relacionamentos pois esta parte costuma ser mais sensível.

![cb3.jpg](https://github.com/cleiton-fx/Construindo-um-Data-Warehouse-/blob/master/imagens/cb3.jpg)

4.Demonstração do Modelo em Formato PDF após finalização.
<br>
Com isso concluímos o modelo Transacional.
<br>
Agora vamos para o Modelo Dimensional utilizando o Star Schema!

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


5. Criação do modelo Dimensional:
<br>
- Criando modelo utilizando DBSchema
<br>
- Trazendo apenas dimensões fundamentais

![cb5.jpg](https://github.com/cleiton-fx/Construindo-um-Data-Warehouse-/blob/master/imagens/cb5.jpg)

6. Consolidando Informações em poucas tabelas seguindo regras de negócio
![cb6.jpg](https://github.com/cleiton-fx/Construindo-um-Data-Warehouse-/blob/master/imagens/cb6.jpg)

7. Tabela Quase pronta, faltando apenas definir Cahves e fazer Relacionamentos.
![cb7.jpg](https://github.com/cleiton-fx/Construindo-um-Data-Warehouse-/blob/master/imagens/cb7.jpg)

8. Aqui Termina a criação do Modelo Lógico Dimensional contendo todas as características necessárias do funcionamento deste negócio.
![cb8.jpg](https://github.com/cleiton-fx/Construindo-um-Data-Warehouse-/blob/master/imagens/cb8.jpg)

9.Criação do Modelo Físico apartir do DBSchema no Modelo Lógico que ja foi criado e implementado no Banco 
<br>
OBS: O DBSchema ja faz isso a no decorrer da construção do Diagrama [Aqui](https://github.com/cleiton-fx/Construindo-um-Data-Warehouse-/blob/master/ModeloFisico/ModeloFisico/ModeloFisico_v1.sql)
<br>
![cb9.jpg](https://github.com/cleiton-fx/Construindo-um-Data-Warehouse-/blob/master/imagens/cb9.jpg)

10.Carregamento dos dados com Script SQL
<br>
- ETL (Extract,  Transform and Load) e Executar nossa Análise.
- Veja o Script que foi Gerado pelo DbSchema 

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


