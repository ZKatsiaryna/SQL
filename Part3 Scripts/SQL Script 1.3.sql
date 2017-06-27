GO
ALTER TABLE [dbo].[Territories] DROP CONSTRAINT [FK_Territories_Region];

GO
DROP TABLE [dbo].[Region];

GO
ALTER TABLE [dbo].[Customers]
    ADD [CreationDate] DATE NULL;


GO
CREATE TABLE [dbo].[Regions] (
    [RegionID]          INT        NOT NULL,
    [RegionDescription] NCHAR (50) NOT NULL,
    CONSTRAINT [PK_Region] PRIMARY KEY NONCLUSTERED ([RegionID] ASC)
);

GO
ALTER TABLE [dbo].[Territories] WITH NOCHECK
    ADD CONSTRAINT [FK_Territories_Region] FOREIGN KEY ([RegionID]) REFERENCES [dbo].[Regions] ([RegionID]);

GO
