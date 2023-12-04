# RESILIADATA - Sistema de Gerenciamento de Dados Empresariais

Este repositório contém o código fonte e scripts para criar e alimentar um banco de dados fictício chamado RESILIADATA, desenvolvido como parte do projeto individual do Módulo 3 do curso de Análise de Dados.

## Estrutura do Projeto

- **scripts/:**
  - **database_scripts/:** Contém scripts SQL para criar o banco de dados e tabelas.
  - **data_generation_scripts/:** Script Python para gerar dados fictícios.
- **dados/:** Armazena dados utilizados pelo sistema.
  - **gerados/:** Pasta para arquivos CSV gerados pelo script de geração de dados.
  - **tecnologias.json:** JSON com informações sobre as tecnologias utilizadas.
  - **cargos.json:** JSON com informações sobre cargos e funções.
- **documentacao/:** Contém documentação sobre o projeto.
- **Rrequirements.txt:** Lista de requisitos do projeto.
- **README.md:** Este arquivo, fornecendo informações gerais sobre o projeto e instruções de uso.

## Como Usar

### Configuração do Banco de Dados:

1. Execute o script `create_database` em `scripts/database_scripts/` para criar o banco de dados e as tabelas necessárias.

### Geração de Dados Fictícios:

1. Utilize o script Python em `scripts/data_generation_scripts/generate_data.py` para gerar dados fictícios de empresas, colaboradores e tecnologias.
2. Os dados gerados serão armazenados na pasta `dados/gerados/`.

### Povoar o Banco de Dados:

1. Utilize o script `load_data` em `scripts/database_scripts/` para inserir os dados no banco de dados.

## Modelo Conceitual e Lógico do Banco de Dados

Veja abaixo os modelos conceitual e lógico que representam a estrutura do banco de dados.

- **Modelo Conceitual**
![Modelo Conceitual](./modelos/modelo_conceitual.png)
- **Modelo Lógico**
![Modelo Logico](./modelo/modelo_logico.png)
## Dados de Exemplo

### Empresas:

Consulte `dados/gerados/data_empresas.csv`.

### Colaboradores:

Consulte `dados/gerados/data_colaboradores.csv`.

### Tecnologias:

Consulte `dados/gerados/data_tecnologias.csv`.

## Dados Auxiliares

### Tecnologias:

Consulte `dados/tecnologias.json` para obter informações sobre as tecnologias.

### Cargos e Funções:

Consulte `dados/cargos.json` para obter informações sobre os cargos e funções.

## Requisitos do Projeto

Os requisitos necessários para o projeto estão listados no arquivo `Rrequirements.txt`.

## Contribuições

Contribuições são bem-vindas! Sinta-se à vontade para sugerir melhorias, correções ou novos recursos através de issues ou pull requests.

