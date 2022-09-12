SELECT [Id]
      , [PharmacyId]
      , [IsMain]
      , [StateId]
      , [CountryId]
      , [RegionId]
      , [CityId]
      , [DistrictId]
      , [Active]
      , [Detail]
      , [FullAddress]
      , [CreatedBy]
      , [CreatedAt]
      , [UpdatedBy]
      , [UpdatedAt]
      , [WardId]
      , [Detail1]
      , [Detail2]
      , [Detail3]
      , [Detail4]
      , [DetailNoted]
	  , COALESCE([UpdatedAt], [CreatedAt]) AS Trigger_UpdatedAt
  FROM [dbo].[PharmacyAddress]