-- 1. Criar o banco de dados
CREATE DATABASE zoop_megastore;

-- 2. Ativar o banco (isso garante que as tabelas entrem no lugar certo)
USE zoop_megastore;

-- 3. Criar a tabela de Clientes
CREATE TABLE clientes (
    id_cliente INT PRIMARY KEY,
    nome_cliente VARCHAR(150),
    email VARCHAR(150),
    estado VARCHAR(2),
    plano_assinatura VARCHAR(20)
);

-- 4. Criar a tabela de Vendas
CREATE TABLE vendas (
    id_venda INT PRIMARY KEY,
    data_venda DATE,
    id_cliente INT,
    id_produto INT,
    produto VARCHAR(150),
    categoria VARCHAR(100),
    valor_venda DECIMAL(10, 2),
    quantidade INT,
    faturamento DECIMAL(12, 2),
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
);
