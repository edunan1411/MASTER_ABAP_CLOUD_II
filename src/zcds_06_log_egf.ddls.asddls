@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Type Conversions'
@Metadata.ignorePropagatedAnnotations: true
define view entity zcds_06_log_egf
  as select from /dmo/travel
{
  key travel_id                               as TravelId,
      agency_id                               as AgencyId,

      cast(total_price as abap.dec( 16, 2 ) ) as TotalPrice,
      currency_code                           as CurrencyCode

}
