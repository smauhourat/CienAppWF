CREATE TABLE [dbo].[Question] (
    [Id]          INT           IDENTITY (1, 1) NOT NULL,
    [IdSurvey]    INT           NULL,
    [Pregunta] VARCHAR (150) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

