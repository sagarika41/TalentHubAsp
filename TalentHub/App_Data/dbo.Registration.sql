﻿CREATE TABLE [dbo].[Registration] (
    [Id]              INT           IDENTITY (1, 1) NOT NULL,
    [FirstName]       NVARCHAR (50) NULL,
    [LastName]        NVARCHAR (50) NULL,
    [Email]        NVARCHAR (50) NULL,
    [Password]        NVARCHAR (50) NULL,
    [ConfirmPassword] NVARCHAR (50) NULL,
    [DOB]             NVARCHAR (50) NULL,
    [Mobile]          NVARCHAR (50) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

