CREATE TABLE [dbo].[registeration] (
    [Id]        INT           IDENTITY (1, 1) NOT NULL,
    [FirstName] VARCHAR (100) NULL,
    [Email]     VARCHAR (100) NULL,
    [Password]  VARCHAR (20)  NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

