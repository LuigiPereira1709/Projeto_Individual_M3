USE RESILIADATA;

-- Carrega dados de empresas a partir do arquivo CSV
LOAD DATA INFILE 'data_empresas.csv'
INTO TABLE cadastro_empresa
CHARACTER SET utf8
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(nome_empresa, endereco, cnpj_empresa, telefone);

-- Carrega dados de colaboradores a partir do arquivo CSV
LOAD DATA INFILE 'data_colaboradores.csv'
INTO TABLE cadastro_colaboradores
CHARACTER SET utf8
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(area, nome, cargo, telefone)
SET id_empresa = (SELECT id_empresa FROM cadastro_empresa ORDER BY RAND() LIMIT 1);

-- Carrega dados de tecnologias a partir do arquivo CSV
LOAD DATA INFILE 'data_tecnologias.csv'
INTO TABLE cadastro_tecnologias
CHARACTER SET utf8
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(nome_tecnologia, area_tecnologia, descricao_tec);

-- Insere dados aleatórios na tabela de relacionamento entre empresas e tecnologias
INSERT INTO empresa_tecnologia (id_empresa, id_tecnologia)
SELECT 
    (SELECT id_empresa FROM cadastro_empresa ORDER BY RAND() LIMIT 1) AS id_empresa,
    id_tecnologia
FROM cadastro_tecnologias
ORDER BY RAND()
LIMIT 25;

-- Insere dados aleatórios na tabela de relacionamento entre colaboradores e tecnologias
INSERT INTO area_tec_colab (id_colaborador, id_tecnologia)
SELECT 
    (SELECT id_colaborador FROM cadastro_colaboradores ORDER BY RAND() LIMIT 1) AS id_colaborador,
    id_tecnologia
FROM cadastro_tecnologias
ORDER BY RAND()
LIMIT 25;
