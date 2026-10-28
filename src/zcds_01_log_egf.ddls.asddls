@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS-Basics'
@Metadata.ignorePropagatedAnnotations: true

@ObjectModel.semanticKey: [ 'CarrierId', 'ConnectionId', 'FlightDate' ]

define view entity zcds_01_log_egf
  as select from /dmo/flight
{
  key carrier_id                                                  as CarrierId,
  key connection_id                                               as ConnectionId,
  key flight_date                                                 as FlightDate,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      @EndUserText.label: 'Price'
      price                                                       as Price,
      currency_code                                               as CurrencyCode,

      'USD'                                                       as CurrencyDocument,
      '20261010'                                                  as DateString,

      cast( '20261010' as abap.dats )                             as DateDate,

      1.2                                                         as FloatPoint,

      fltp_to_dec( 1.2 as abap.dec( 4, 2 ) )                      as DecimalElement,

      cast( cast( 'E' as abap.lang ) as sylangu preserving type ) as languajeElement

}
where
  carrier_id = 'AA';
