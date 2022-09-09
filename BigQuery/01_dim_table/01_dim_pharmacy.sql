	SELECT p.Id AS Pharmacy_Id
	, p.MasterId AS Pharmacy_MasterId
	, p.Name AS Pharmacy_Name
	, p.Active AS Pharmacy_Active
	, p.CreatedBy AS Pharmacy_CreatedBy
	, p.CreatedAt AS Pharmacy_CreatedAt
	, p.UpdatedBy AS Pharmacy_UpdatedBy
	, p.UpdatedAt AS Pharmacy_UpdatedAt
	, p.ShortName AS Pharmacy_ShortName
	, p.CountryId AS Pharmacy_CountryId
	, p.StatusId AS Pharmacy_StatusId
	, cp.Id AS CompanyPharmacy_Id
	, cp.CompanyId AS CompanyPharmacy_CompanyId
	, cp.PharmacyId AS CompanyPharmacy_PharmacyId
	, cp.Code AS CompanyPharmacy_Code
	, cp.TerritoryId AS CompanyPharmacy_TerritoryId
	, cp.Name AS CompanyPharmacy_Name
	, cp.Active AS CompanyPharmacy_Active
	, cp.SaleRepId AS CompanyPharmacy_SaleRepId
	, cp.FromDate AS CompanyPharmacy_FromDate
	, cp.CountryId AS CompanyPharmacy_CountryId
	, cp.CreatedAt AS CompanyPharmacy_CreatedAt
	, cp.UpdatedAt AS CompanyPharmacy_UpdatedAt
	, cp.CoveredType AS CompanyPharmacy_CoveredType
	, ce.Id AS CompanyEmployee_Id
	, ce.FirstName AS CompanyEmployee_FirstName
	, ce.LastName AS CompanyEmployee_LastName
	, ce.UserId AS CompanyEmployee_UserId
	, ce.CompanyId AS CompanyEmployee_CompanyId
	, ce.Code AS CompanyEmployee_Code
	, ce.Active AS CompanyEmployee_Active
	, ce.PositionId AS CompanyEmployee_PositionId
	, ce.CreatedBy AS CompanyEmployee_CreatedBy
from [dbo].[Pharmacy] p
left join [dbo].[CompanyPharmacy] cp on p.id=cp.PharmacyId
left join [dbo].[CompanyEmployee] ce on ce.id = cp.SaleRepId