@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption - Child Entity'
@Metadata.ignorePropagatedAnnotations: true
define view entity zcds_28_log_egf as projection on zcds_24_log_egf
{
    key TravelId,
    key BookingId,
    BookingDate,
    CustomerId,
    CarrierId,
    ConnectionId,
    FlightDate,
    @Semantics.amount.currencyCode: 'CurrencyCode'    
    FlightPrice,
    CurrencyCode,
    /* Associations */
    _Customer,
    _Travel: redirected to parent zcds_27_log_egf
}
