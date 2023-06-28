CREATE TABLE [dbo].[product] (
    [ProductID]    INT           NOT NULL,
    [ProductName]  VARCHAR (150) NULL,
    [Price]        BIGINT        NULL,
    [ProductImage] VARCHAR (150) NULL,
    PRIMARY KEY CLUSTERED ([ProductID] ASC)
);

