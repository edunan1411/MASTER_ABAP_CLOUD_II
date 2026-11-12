@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Joins'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZCDS_JOIN_2213
  as select from /dmo/booking as Booking

    inner join   /dmo/flight  as Flight on Flight.carrier_id = Booking.carrier_id
{
  key Booking.booking_id   as BookingId,
      Flight.flight_date   as FlightDate,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      Flight.price         as FlightPrice,
      Flight.currency_code as CurrencyCode
}
