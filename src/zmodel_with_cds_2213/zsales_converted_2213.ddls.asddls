@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Conversion Moneda'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZSALES_CONVERTED_2213
  as select from /dmo/booking
{
  @Semantics.amount.currencyCode: 'OriginalCurrency'
  flight_price                                           as OriginalPrice,
  currency_code                                          as OriginalCurrency,
  @Semantics.amount.currencyCode: 'ConvertedCurrency'
  currency_conversion( amount             => flight_price,
                       source_currency    => currency_code,
                       target_currency    => cast('USD' as abap.cuky),
                       exchange_rate_date => booking_date,
                       error_handling => 'SET_TO_NULL' ) as ConvertedPrice,
  cast('USD' as abap.cuky( 5 ) )                         as ConvertedCurrency

}
