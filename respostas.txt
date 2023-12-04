# Entidades Necessárias

## cadastro_empresa

- **id_empresa (INT):** Chave primária autoincremental.
- **nome_empresa (VARCHAR):** Nome da empresa.
- **endereco (VARCHAR):** Endereço da empresa.
- **cnpj_empresa (VARCHAR):** CNPJ da empresa.
- **telefone (VARCHAR):** Número de telefone da empresa.

## cadastro_tecnologias

- **id_tecnologia (INT):** Chave primária autoincremental.
- **nome_tecnologia (VARCHAR):** Nome da tecnologia.
- **area_tecnologia (VARCHAR):** Área à qual a tecnologia pertence (webdev, dados, marketing, etc.).
- **descricao_tec (VARCHAR):** Descrição da tecnologia.

## cadastro_colaboradores

- **id_colaborador (INT):** Chave primária autoincremental.
- **id_empresa (INT):** Chave estrangeira referenciando cadastro_empresa.
- **nome (VARCHAR):** Nome do colaborador.
- **area (VARCHAR):** Área de atuação do colaborador.
- **cargo (VARCHAR):** Cargo do colaborador.
- **telefone (VARCHAR):** Número de telefone do colaborador.

# Tabelas de Relacionamento

## empresa_tecnologia

- **id_emp_tec (INT):** Chave primária autoincremental.
- **id_empresa (INT):** Chave estrangeira referenciando cadastro_empresa.
- **id_tecnologia (INT):** Chave estrangeira referenciando cadastro_tecnologias.

## area_tec_colab

- **id_area_tec_colab (INT):** Chave primária autoincremental.
- **id_colaborador (INT):** Chave estrangeira referenciando cadastro_colaboradores.
- **id_tecnologia (INT):** Chave estrangeira referenciando cadastro_tecnologias.

# Relacionamentos

- A tabela empresa_tecnologia estabelece um relacionamento entre empresas e tecnologias.
- A tabela area_tec_colab estabelece um relacionamento entre colaboradores e tecnologias.

# Simulação de 2 Registros para Cada Entidade

### cadastro_empresa

| id_empresa | nome_empresa | endereco          | cnpj_empresa        | telefone       |
|------------|--------------|-------------------|---------------------|-----------------|
| 1          | Empresa A    | Rua A, Cidade A   | 12345678900001     | (11) 1111-1111 |
| 2          | Empresa B    | Rua B, Cidade B   | 98765432100002     | (22) 2222-2222 |

### cadastro_tecnologias

| id_tecnologia | nome_tecnologia | area_tecnologia | descricao_tec |
|---------------|------------------|------------------|---------------|
| 1             | Tech A           | Web Development | Description A |
| 2             | Tech B           | Data Analysis    | Description B |

### cadastro_colaboradores

| id_colaborador | id_empresa | nome           | area       | cargo      | telefone       |
|----------------|------------|----------------|------------|------------|-----------------|
| 1              | 1          | Colaborador A  | Development | Developer  | (33) 3333-3333 |
| 2              | 2          | Colaborador B  | Data Analysis | Analyst  | (44) 4444-4444 |
