CREATE TABLE [dbo].[Product] (
    [Id]                INT            IDENTITY (1, 1) NOT NULL,
    [Name]              NVARCHAR (MAX) NOT NULL,
    [Description]       NVARCHAR (MAX) NULL,
    [Price]             FLOAT (53)     NOT NULL,
    [Image]             NVARCHAR (MAX) NULL,
    [CategoryId]        INT            NOT NULL,
    [ApplicationTypeId] INT            NOT NULL,
    CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Product_ApplicationType_ApplicationTypeId] FOREIGN KEY ([ApplicationTypeId]) REFERENCES [dbo].[ApplicationType] ([Id]) ON DELETE CASCADE,
    CONSTRAINT [FK_Product_Category_CategoryId] FOREIGN KEY ([CategoryId]) REFERENCES [dbo].[Category] ([Id]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_Product_ApplicationTypeId]
    ON [dbo].[Product]([ApplicationTypeId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_Product_CategoryId]
    ON [dbo].[Product]([CategoryId] ASC);

