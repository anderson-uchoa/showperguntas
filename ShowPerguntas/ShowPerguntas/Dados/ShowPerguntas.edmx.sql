
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, and Azure
-- --------------------------------------------------
-- Date Created: 07/19/2010 09:22:44
-- Generated from EDMX file: C:\Users\Ricardo\documents\visual studio 2010\projects\ShowPerguntas\ShowPerguntas\Dados\ShowPerguntas.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [Show de Perguntas];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_PerguntaTema]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Perguntas] DROP CONSTRAINT [FK_PerguntaTema];
GO
IF OBJECT_ID(N'[dbo].[FK_RankingUsuario]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Rankings] DROP CONSTRAINT [FK_RankingUsuario];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Perguntas]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Perguntas];
GO
IF OBJECT_ID(N'[dbo].[Rankings]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Rankings];
GO
IF OBJECT_ID(N'[dbo].[Temas]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Temas];
GO
IF OBJECT_ID(N'[dbo].[Usuarios]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Usuarios];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Perguntas'
CREATE TABLE [dbo].[Perguntas] (
    [IdPergunta] int IDENTITY(1,1) NOT NULL,
    [enunciado] nvarchar(max)  NOT NULL,
    [dificuldade] nvarchar(max)  NOT NULL,
    [alternativaCorreta] nvarchar(max)  NOT NULL,
    [alternativaIncorreta1] nvarchar(max)  NOT NULL,
    [alternativaIncorreta2] nvarchar(max)  NOT NULL,
    [alternativaIncorreta3] nvarchar(max)  NOT NULL,
    [alternativaIncorreta4] nvarchar(max)  NOT NULL,
    [vezesRespondidaAltCorreta] int  NOT NULL,
    [vezesRespondidaAltIncorreta1] int  NOT NULL,
    [vezesRespondidaAltIncorreta2] int  NOT NULL,
    [vezesRespondidaAltIncorreta3] int  NOT NULL,
    [vezesRespondidaAltIncorreta4] int  NOT NULL,
    [Tema_IdTema] int  NOT NULL
);
GO

-- Creating table 'Rankings'
CREATE TABLE [dbo].[Rankings] (
    [IdRanking] int IDENTITY(1,1) NOT NULL,
    [pontuacaoMaxima] nvarchar(max)  NOT NULL,
    [UsuarioIdUsuario] int  NULL
);
GO

-- Creating table 'Temas'
CREATE TABLE [dbo].[Temas] (
    [IdTema] int IDENTITY(1,1) NOT NULL,
    [descricao] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Usuarios'
CREATE TABLE [dbo].[Usuarios] (
    [IdUsuario] int IDENTITY(1,1) NOT NULL,
    [nome] nvarchar(max)  NOT NULL,
    [sobrenome] nvarchar(max)  NOT NULL,
    [login] nvarchar(max)  NOT NULL,
    [senha] nvarchar(max)  NOT NULL,
    [dataCadastro] datetime  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [IdPergunta] in table 'Perguntas'
ALTER TABLE [dbo].[Perguntas]
ADD CONSTRAINT [PK_Perguntas]
    PRIMARY KEY CLUSTERED ([IdPergunta] ASC);
GO

-- Creating primary key on [IdRanking] in table 'Rankings'
ALTER TABLE [dbo].[Rankings]
ADD CONSTRAINT [PK_Rankings]
    PRIMARY KEY CLUSTERED ([IdRanking] ASC);
GO

-- Creating primary key on [IdTema] in table 'Temas'
ALTER TABLE [dbo].[Temas]
ADD CONSTRAINT [PK_Temas]
    PRIMARY KEY CLUSTERED ([IdTema] ASC);
GO

-- Creating primary key on [IdUsuario] in table 'Usuarios'
ALTER TABLE [dbo].[Usuarios]
ADD CONSTRAINT [PK_Usuarios]
    PRIMARY KEY CLUSTERED ([IdUsuario] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [Tema_IdTema] in table 'Perguntas'
ALTER TABLE [dbo].[Perguntas]
ADD CONSTRAINT [FK_PerguntaTema]
    FOREIGN KEY ([Tema_IdTema])
    REFERENCES [dbo].[Temas]
        ([IdTema])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_PerguntaTema'
CREATE INDEX [IX_FK_PerguntaTema]
ON [dbo].[Perguntas]
    ([Tema_IdTema]);
GO

-- Creating foreign key on [UsuarioIdUsuario] in table 'Rankings'
ALTER TABLE [dbo].[Rankings]
ADD CONSTRAINT [FK_RankingUsuario]
    FOREIGN KEY ([UsuarioIdUsuario])
    REFERENCES [dbo].[Usuarios]
        ([IdUsuario])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_RankingUsuario'
CREATE INDEX [IX_FK_RankingUsuario]
ON [dbo].[Rankings]
    ([UsuarioIdUsuario]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------