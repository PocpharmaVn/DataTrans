SELECT [Id]
      , [Name]
      , [RevevantNames]
      , [Code]
      , [CreatedBy]
      , [CreatedAt]
      , [UpdatedBy]
      , [UpdatedAt]
      , [CountryId]
      , [CurrencyId]
      , [CurrencyCode]
      , [CultureFormat]
	  , COALESCE([UpdatedAt], [CreatedAt]) AS Trigger_UpdatedAt
  FROM [dbo].[Country]