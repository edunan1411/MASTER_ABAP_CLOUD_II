@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Aggregations'
@Metadata.ignorePropagatedAnnotations: true
define view entity zcds_05_log_egf
  as select from zcds_06_log_egf
{
  // key TravelId,
  // AgencyId,
  min(TotalPrice)                      as MinTotalPrice,

  max(TotalPrice)                      as MaxTotalPrice,

  sum(TotalPrice)                      as SumTotalPrice,

  count(distinct TotalPrice)           as CountDistTotalPrice,

  count(*)                             as CountAllTotalPrice,

  avg(TotalPrice as abap.dec( 16, 2 )) as AvgTotalPrice,

  CurrencyCode
}
group by
  CurrencyCode
