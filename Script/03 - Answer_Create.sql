CREATE TABLE [dbo].[Answer] (
    [Id]          INT           IDENTITY (1, 1) NOT NULL,
    [IdQuestion]  INT           NOT NULL,
    [Respuesta] VARCHAR (150) NOT NULL,
    [Puntaje]       INT           NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

