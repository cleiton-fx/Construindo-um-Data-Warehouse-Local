# Construindo um Data Warehouse passo a passo

![data-warehousing1.png](https://github.com/cleiton-fx/Construindo-um-Data-Warehouse-/blob/master/imagens/data-warehousing1.png)


<h1>Intrudução</h1>


<h1>Data Warehouse definido</h1>

Um data warehouse é um tipo de sistema de gerenciamento de dados projetado para ativar e fornecer suporte às atividades de business intelligence (BI), especialmente a análise avançada. Os data warehouses destinam-se exclusivamente a realizar consultas e análises avançadas e geralmente contêm grandes quantidades de dados históricos. Os dados em um data warehouse geralmente são derivados de uma ampla variedade de fontes, como arquivos de log de aplicativos e aplicativos de transações.

Um data warehouse centraliza e consolida grandes quantidades de dados de várias fontes. Seus recursos analíticos permitem que as organizações obtenham informações de negócios úteis de seus dados para melhorar a tomada de decisões. Com o tempo, cria-se um registro histórico que pode ser inestimável para cientistas de dados e analistas de negócios. Devido a esses recursos, um data warehouse pode ser considerado como a “única fonte confiável” de uma organização.

Um data warehouse típico geralmente inclui os seguintes elementos:

 - Um banco de dados relacional para armazenar e gerenciar dados
 - Uma solução de extração, carregamento e transformação (ELT) para preparar os dados para análise
 - Análise estatística, relatórios e recursos de mineração de dados
 - Ferramentas de análise de clientes para visualizar e apresentar dados aos usuários de negócios
 - Outras aplicações analíticas mais sofisticadas que geram informações acionáveis aplicando ciência de dados e algoritmos de inteligência artificial (IA) ou gráficos e recursos espaciais que permitem mais tipos de análise de dados em escala.

<h1>Arquitetura de Data Warehouse</h1>

A arquitetura de um data warehouse é determinada pelas necessidades específicas da organização. Arquiteturas comuns incluem:

<b>Simples.</b> Todos os data warehouses compartilham um design básico no qual metadados, dados de resumo e dados brutos são armazenados no repositório central do warehouse. O repositório é alimentado por fontes de dados em uma extremidade e acessado por usuários finais para análise, relatório e mineração na outra extremidade.
<br>
<b>Simples com uma área de preparo.</b> Os dados operacionais devem ser limpos e processados antes de serem colocados no warehouse. Embora isso possa ser feito de forma programática, muitos data warehouses adicionam uma área de preparo de dados antes que eles entrem no warehouse, para simplificar a preparação dos dados.
<br>
<b>Hub e spoke.</b> A adição de data marts entre o repositório central e os usuários finais permite que uma organização personalize seu data warehouse para atender a várias linhas de negócios. Quando os dados estiverem prontos para uso, eles serão movidos para o data mart apropriado.
<br>
<b>Áreas restritas.</b> As áreas restritas são áreas privadas, seguras e protegidas que permitem às empresas explorar rápida e informalmente novos conjuntos de dados ou formas de analisar dados sem ter que obedecer ou cumprir as regras formais e o protocolo do data warehouse.<br>

Vantagens e Desvantagens de um Data Warehouse

<b>Vantagens:</b>

 - Visão integrada e consolidada dos dados: um data warehouse é projetado para armazenar dados de várias fontes em um único local, o que permite aos usuários obter uma visão consolidada e integrada dos dados da empresa.

 - Melhora na tomada de decisões: o data warehouse pode fornecer insights valiosos para a tomada de decisões, pois os dados podem ser analisados e visualizados de várias maneiras para identificar tendências e padrões.

 - Facilita a análise de dados: o data warehouse permite que os usuários realizem análises mais complexas de dados, incluindo consultas ad hoc e análises preditivas.

 - Aumento da eficiência: o data warehouse é projetado para ser altamente eficiente em termos de acesso e consulta aos dados, o que pode ajudar a melhorar a eficiência da equipe de TI e dos usuários.

 - Suporte à estratégia empresarial: o data warehouse pode ajudar as empresas a alinhar sua estratégia empresarial com seus dados e informações, o que pode levar a decisões mais informadas e melhores resultados.

<b>Desvantagens:</b>

 - Custo: o custo de implementação e manutenção de um data warehouse pode ser alto, especialmente para empresas de pequeno e médio porte.

 - Complexidade: o desenvolvimento e a manutenção de um data warehouse podem ser complexos, exigindo recursos significativos de TI e habilidades especializadas.

 - Dificuldade de atualização: o data warehouse pode ser difícil de atualizar e manter, especialmente se houver mudanças significativas nos dados da empresa.

 - Problemas de qualidade dos dados: o data warehouse é apenas tão bom quanto a qualidade dos dados que ele contém. Se houver problemas com a qualidade dos dados, isso pode afetar a eficácia do data warehouse.

 - Requer tempo para construir: o desenvolvimento de um data warehouse pode levar tempo e recursos significativos para ser concluído, o que pode ser um desafio para empresas que desejam resultados rápidos.



Caso queira saber mais clique aqui 
