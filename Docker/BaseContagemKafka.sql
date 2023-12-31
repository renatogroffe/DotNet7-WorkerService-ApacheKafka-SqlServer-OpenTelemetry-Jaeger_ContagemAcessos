CREATE DATABASE BaseContagemKafka
GO

USE BaseContagemKafka
GO

PRINT 'Banco de dados BaseContagemKafka criado com sucesso! '

CREATE TABLE dbo.HistoricoContagem(
    Id INT IDENTITY(1,1) NOT NULL,
    DataProcessamento DATETIME NOT NULL,
    ValorAtual INT NOT NULL,
    TopicName VARCHAR(120) NOT NULL,
    Producer VARCHAR(120) NOT NULL,
    Consumer VARCHAR(120) NOT NULL,
    PartitionNumber INT NOT NULL,
    Mensagem VARCHAR(500) NOT NULL,
    Kernel VARCHAR(80) NOT NULL,
    Framework VARCHAR(80) NOT NULL,
    CONSTRAINT PK_HistoricoContagem PRIMARY KEY (Id)
)
GO

PRINT 'Tabela dbo.HistoricoContagem criada com sucesso!'