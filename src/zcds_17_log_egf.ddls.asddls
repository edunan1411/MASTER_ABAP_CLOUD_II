@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Association- Nav with path expression'
@Metadata.ignorePropagatedAnnotations: true
define view entity zcds_17_log_egf
  as select from /dmo/travel
  
  association [1..1] to /dmo/customer as _Customer on _Customer.customer_id = $projection.CustomerId
  association [1..1] to /dmo/agency as _Agency on _Agency.agency_id = $projection.AgencyId
{
  key travel_id     as TravelId,
      agency_id     as AgencyId,
      customer_id   as CustomerId,
      _Agency,
      _Customer
}
