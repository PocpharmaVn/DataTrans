WITH tmp AS (
	SELECT p.Id AS Pharmacy_Id
		, p.MasterId AS Pharmacy_MasterId
		, p.Name AS Pharmacy_Name
		, CAST(p.Active AS INT) AS Pharmacy_Active
		, COALESCE(p.CreatedBy, -100) AS Pharmacy_CreatedBy
		, CONVERT(DATETIME, p.CreatedAt) AS Pharmacy_CreatedAt
		, COALESCE(p.UpdatedBy, -100) AS Pharmacy_UpdatedBy
		, CONVERT(DATETIME, p.UpdatedAt) AS Pharmacy_UpdatedAt
		, p.ShortName AS Pharmacy_ShortName
		, p.CountryId AS Pharmacy_CountryId
		, p.StatusId AS Pharmacy_StatusId
		, cp.Id AS CompanyPharmacy_Id
		, cp.CompanyId AS CompanyPharmacy_CompanyId
		, cp.PharmacyId AS CompanyPharmacy_PharmacyId
		, cp.Code AS CompanyPharmacy_Code
		, cp.TerritoryId AS CompanyPharmacy_TerritoryId
		, cp.Name AS CompanyPharmacy_Name
		, CAST(cp.Active AS INT) AS CompanyPharmacy_Active
		, cp.SaleRepId AS CompanyPharmacy_SaleRepId
		, CONVERT(DATETIME, cp.FromDate) AS CompanyPharmacy_FromDate
		, cp.CountryId AS CompanyPharmacy_CountryId
		, CONVERT(DATETIME, cp.CreatedAt) AS CompanyPharmacy_CreatedAt
		, CONVERT(DATETIME, cp.UpdatedAt) AS CompanyPharmacy_UpdatedAt
		, CAST(cp.CoveredType AS INT) AS CompanyPharmacy_CoveredType
		, ce.Id AS CompanyEmployee_Id
		, ce.FirstName AS CompanyEmployee_FirstName
		, ce.LastName AS CompanyEmployee_LastName
		, COALESCE(ce.UserId, -100) AS CompanyEmployee_UserId
		, ce.CompanyId AS CompanyEmployee_CompanyId
		, ce.Code AS CompanyEmployee_Code
		, CAST(ce.Active AS INT) AS CompanyEmployee_Active
		, ce.PositionId AS CompanyEmployee_PositionId
		, COALESCE(ce.CreatedBy, -100) AS CompanyEmployee_CreatedBy
		, CONVERT(DATETIME, COALESCE(p.UpdatedAt, p.CreatedAt)) AS Trigger_UpdatedAt
	FROM [dbo].[Pharmacy] p
	LEFT JOIN [dbo].[CompanyPharmacy] cp ON p.id=cp.PharmacyId
	LEFT JOIN [dbo].[CompanyEmployee] ce ON ce.id = cp.SaleRepId
)
SELECT Pharmacy_Id
	, Pharmacy_MasterId
	, Pharmacy_Name
	, Pharmacy_Active
	, Pharmacy_CreatedBy
	, Pharmacy_CreatedAt
	, Pharmacy_UpdatedBy
	, Pharmacy_UpdatedAt
	, Pharmacy_ShortName
	, Pharmacy_CountryId
	, Pharmacy_StatusId
	, CompanyPharmacy_Id
	, CompanyPharmacy_CompanyId
	, CompanyPharmacy_PharmacyId
	, CompanyPharmacy_Code
	, CompanyPharmacy_TerritoryId
	, CompanyPharmacy_Name
	, CompanyPharmacy_Active
	, CompanyPharmacy_SaleRepId
	, CompanyPharmacy_FromDate
	, CompanyPharmacy_CountryId
	, CompanyPharmacy_CreatedAt
	, CompanyPharmacy_UpdatedAt
	, CompanyPharmacy_CoveredType
	, CompanyEmployee_Id
	, CompanyEmployee_FirstName
	, CompanyEmployee_LastName
	, CompanyEmployee_UserId
	, CompanyEmployee_CompanyId
	, CompanyEmployee_Code
	, CompanyEmployee_Active
	, CompanyEmployee_PositionId
	, CompanyEmployee_CreatedBy
	, Trigger_UpdatedAt
FROM tmp