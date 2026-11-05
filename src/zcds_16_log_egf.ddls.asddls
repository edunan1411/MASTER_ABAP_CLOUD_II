@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Association Explicit Join'
@Metadata.ignorePropagatedAnnotations: true
define view entity zcds_16_log_egf
  as select from /dmo/travel

  association [1..1] to /dmo/customer as _Customer on _Customer.customer_id = $projection.CustomerId
  association [1..1] to /dmo/agency   as _Agency   on _Agency.agency_id = $projection.AgencyId
{
  key travel_id                                                      as TravelId,
      agency_id                                                      as AgencyId,
      _Agency.name                                                   as AgencyName,
      _Agency.city                                                   as AgencyCity,
      customer_id                                                    as CustomerId,
      concat_with_space(_Customer.first_name, _Customer.last_name,2) as CustomerName

}
