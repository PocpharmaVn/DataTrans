CREATE TABLE poc_dwh.dim_country 
  ( 
	Id INT64
	, Name STRING
	, RevevantNames STRING
	, Code STRING
	, CreatedBy INT64
	, CreatedAt DATE
	, UpdatedBy INT64
	, UpdatedAt DATE
	, CountryId INT64
	, CurrencyId INT64
	, CurrencyCode STRING
	, CultureFormat STRING
	, Trigger_UpdatedAt DATE
  )
 PARTITION BY DATE_TRUNC(CreatedAt, MONTH);
  
CREATE TABLE poc_dwh.dim_city 
  ( 
	Id INT64
    , Name STRING
    , RelevantNames STRING
    , CountryId INT64
    , StateId INT64
    , RegionId INT64
    , CreatedBy INT64
    , CreatedAt DATE
    , UpdatedBy INT64
    , UpdatedAt DATE
	, Trigger_UpdatedAt DATE
  )
  PARTITION BY DATE_TRUNC(CreatedAt, MONTH);
  
  CREATE TABLE poc_dwh.dim_pharmacy_employee 
  ( 
	Id INT64
    , FirstName STRING
    , LastName STRING
    , UserId INT64
    , HasRegisterCode INT64
    , PharmacyId INT64
    , Active INT64
    , PositionId INT64
    , CreatedBy INT64
    , CreatedAt DATE
    , UpdatedBy INT64
    , UpdatedAt DATE
    , RegisteredBy INT64
    , RegisteredDate
    , CountryId INT64
    , UseTempPassword INT64
    , IsGeneric INT64
    , AlreadyLoggedIn INT64
	, Trigger_UpdatedAt DATE
  )
  PARTITION BY DATE_TRUNC(CreatedAt, MONTH);
  
  CREATE TABLE poc_dwh.dim_pharmacy_address 
  ( 
	Id INT64
    , PharmacyId INT64
    , IsMain INT64
    , StateId INT64
    , CountryId INT64
    , RegionId INT64
    , CityId INT64
    , DistrictId INT64
    , Active INT64
    , Detail STRING
    , FullAddress STRING
    , CreatedBy INT64
    , CreatedAt DATE
    , UpdatedBy INT64
    , UpdatedAt DATE
    , WardId INT64
    , Detail1 STRING
    , Detail2 STRING
    , Detail3 STRING
    , Detail4 STRING
    , DetailNoted STRING
	, Trigger_UpdatedAt DATE
  )
  PARTITION BY DATE_TRUNC(CreatedAt, MONTH);
  
  CREATE TABLE poc_dwh.dim_pharmacy 
  ( 
	Pharmacy_Id INT64
	, Pharmacy_MasterId INT64
	, Pharmacy_Name STRING
	, Pharmacy_Active INT64
	, Pharmacy_CreatedBy INT64
	, Pharmacy_CreatedAt DATE
	, Pharmacy_UpdatedBy INT64
	, Pharmacy_UpdatedAt DATE
	, Pharmacy_ShortName STRING
	, Pharmacy_CountryId INT64
	, Pharmacy_StatusId INT64
	, CompanyPharmacy_Id INT64
	, CompanyPharmacy_CompanyId INT64
	, CompanyPharmacy_PharmacyId INT64
	, CompanyPharmacy_Code INT64
	, CompanyPharmacy_TerritoryId INT64
	, CompanyPharmacy_Name STRING
	, CompanyPharmacy_Active INT64
	, CompanyPharmacy_SaleRepId INT64
	, CompanyPharmacy_FromDate DATE
	, CompanyPharmacy_CountryId INT64
	, CompanyPharmacy_CreatedAt DATE
	, CompanyPharmacy_UpdatedAt DATE
	, CompanyPharmacy_CoveredType INT64
	, CompanyEmployee_Id INT64
	, CompanyEmployee_FirstName STRING
	, CompanyEmployee_LastName STRING
	, CompanyEmployee_UserId INT64
	, CompanyEmployee_CompanyId INT64
	, CompanyEmployee_Code INT64
	, CompanyEmployee_Active INT64
	, CompanyEmployee_PositionId INT64
	, CompanyEmployee_CreatedBy INT64
	, Trigger_UpdatedAt DATE
  )
  PARTITION BY DATE_TRUNC(Pharmacy_CreatedAt, MONTH);