-- Criação do banco de dados RESILIADATA
CREATE DATABASE RESILIADATA;
USE RESILIADATA;

-- Tabela para armazenar informações sobre empreAsas
CREATE TABLE cadastro_empresa (
    id_empresa INT(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nome_empresa VARCHAR(250),
    endereco VARCHAR(150),
    cnpj_empresa VARCHAR(25),
    telefone VARCHAR(17)
);

-- Tabela para armazenar informações sobre tecnologias
CREATE TABLE cadastro_tecnologias (
    id_tecnologia INT(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nome_tecnologia VARCHAR(250),
    area_tecnologia VARCHAR(150),
    descricao_tec VARCHAR(250)
);

-- Tabela de relacionamento entre empresas e tecnologias
CREATE TABLE empresa_tecnologia (
    id_emp_tec INT(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    id_empresa INT(11) NOT NULL,
    id_tecnologia INT(11) NOT NULL,
    FOREIGN KEY (id_empresa) REFERENCES cadastro_empresa (id_empresa),
    FOREIGN KEY (id_tecnologia) REFERENCES cadastro_tecnologias (id_tecnologia)
);

-- Tabela para armazenar informações sobre colaboradores
CREATE TABLE cadastro_colaboradores (
    id_colaborador INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    id_empresa INT(11) NOT NULL,
    nome VARCHAR(250) NOT NULL,
    area VARCHAR(150) NOT NULL,
    cargo VARCHAR(150) NOT NULL,
    telefone VARCHAR(17),
    FOREIGN KEY (id_empresa) REFERENCES cadastro_empresa (id_empresa)
);

-- Tabela de relacionamento entre colaboradores e tecnologias
CREATE TABLE area_tec_colab (
    id_area_tec_colab INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    id_colaborador INT(11) NOT NULL,
    id_tecnologia INT(11) NOT NULL,
    FOREIGN KEY (id_colaborador) REFERENCES cadastro_colaboradores(id_colaborador),
    FOREIGN KEY (id_tecnologia) REFERENCES cadastro_tecnologias(id_tecnologia)
);
-- Criação do banco de dados RESILIADATA
CREATE DATABASE RESILIADATA;
USE RESILIADATA;

-- Tabela para armazenar informações sobre empresas
CREATE TABLE cadastro_empresa (
    id_empresa INT(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nome_empresa VARCHAR(250),
    endereco VARCHAR(150),
    cnpj_empresa VARCHAR(25),
    telefone VARCHAR(17)
);

-- Tabela para armazenar informações sobre tecnologias
CREATE TABLE cadastro_tecnologias (
    id_tecnologia INT(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nome_tecnologia VARCHAR(250),
    area_tecnologia VARCHAR(150),
    descricao_tec VARCHAR(250)
);

-- Tabela de relacionamento entre empresas e tecnologias
CREATE TABLE empresa_tecnologia (
    id_emp_tec INT(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    id_empresa INT(11) NOT NULL,
    id_tecnologia INT(11) NOT NULL,
    FOREIGN KEY (id_empresa) REFERENCES cadastro_empresa (id_empresa),
    FOREIGN KEY (id_tecnologia) REFERENCES cadastro_tecnologias (id_tecnologia)
);

-- Tabela para armazenar informações sobre colaboradores
CREATE TABLE cadastro_colaboradores (
    id_colaborador INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    id_empresa INT(11) NOT NULL,
    nome VARCHAR(250) NOT NULL,
    area VARCHAR(150) NOT NULL,
    cargo VARCHAR(150) NOT NULL,
    telefone VARCHAR(17),
    FOREIGN KEY (id_empresa) REFERENCES cadastro_empresa (id_empresa)
);

-- Tabela de relacionamento entre colaboradores e tecnologias
CREATE TABLE area_tec_colab (
    id_area_tec_colab INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    id_colaborador INT(11) NOT NULL,
    id_tecnologia INT(11) NOT NULL,
    FOREIGN KEY (id_colaborador) REFERENCES cadastro_colaboradores(id_colaborador),
    FOREIGN KEY (id_tecnologia) REFERENCES cadastro_tecnologias(id_tecnologia)
);
