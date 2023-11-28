CREATE TABLE [dbo].[ApplicationType] (
    [Id]   INT            IDENTITY (1, 1) NOT NULL,
    [Name] NVARCHAR (MAX) NOT NULL,
    CONSTRAINT [PK_ApplicationType] PRIMARY KEY CLUSTERED ([Id] ASC)
);

