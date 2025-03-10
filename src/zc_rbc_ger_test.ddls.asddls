@Metadata.allowExtensions: true
@EndUserText.label: '###GENERATED Core Data Service Entity'
@AccessControl.authorizationCheck: #CHECK
define root view entity ZC_RBC_GER_TEST
  provider contract TRANSACTIONAL_QUERY
  as projection on ZR_RBC_GER_TEST
{
  key ProjectId,
  ProjectName,
  Description,
  StartDate,
  EndDate,
  Status,
  Budget,
  @Semantics.currencyCode: true
  CurrencyCode,
  ManagerId,
  CreatedBy,
  CreatedAt,
  LastChangedBy,
  LastChangedAt,
  LocalLastChangedAt
  
}
