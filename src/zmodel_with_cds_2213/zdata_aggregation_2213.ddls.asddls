@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Precios'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZDATA_AGGREGATION_2213
  as select from /dmo/booking
{
  @Semantics.amount.currencyCode: 'CurrencyCode'
  sum(flight_price) as SumPrice,
  currency_code as CurrencyCode
} group by currency_code 
