@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
@EndUserText.label: '###GENERATED Core Data Service Entity'
define root view entity ZR_RBC_GER_TEST
  as select from ZRBC_GER_TEST
{
  key project_id as ProjectId,
  project_name as ProjectName,
  description as Description,
  start_date as StartDate,
  end_date as EndDate,
  status as Status,
  @Semantics.amount.currencyCode: 'CurrencyCode'
  budget as Budget,
  @Consumption.valueHelpDefinition: [ {
    entity.name: 'I_CurrencyStdVH', 
    entity.element: 'Currency', 
    useForValidation: true
  } ]
  currency_code as CurrencyCode,
  manager_id as ManagerId,
  created_by as CreatedBy,
  created_at as CreatedAt,
  last_changed_by as LastChangedBy,
  @Semantics.systemDateTime.localInstanceLastChangedAt: true
  last_changed_at as LastChangedAt,
  @Semantics.systemDateTime.localInstanceLastChangedAt: true
  local_last_changed_at as LocalLastChangedAt
  
}
