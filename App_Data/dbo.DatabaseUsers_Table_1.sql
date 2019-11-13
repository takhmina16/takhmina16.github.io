CREATE TABLE [dbo].[DatabaseUsers_Table] (
    [ID]        INT NOT NULL,
    [FirstName] VARCHAR(50)  NOT NULL,
    [LastName]  VARCHAR(50)  NOT NULL,
    [Username]  VARCHAR(50)  NOT NULL,
    [Password]  VARCHAR(50)  NOT NULL,
    [Email]     VARCHAR(50)  NOT NULL,
    [Course]    VARCHAR(50)  NOT NULL,
    CONSTRAINT [PK_DatabaseUsers_Table] PRIMARY KEY CLUSTERED ([ID] ASC)
);

