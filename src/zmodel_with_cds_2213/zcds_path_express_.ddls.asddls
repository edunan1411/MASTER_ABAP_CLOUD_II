@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Asociaciones Filtradas - Path Expression - cardinalidad'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZCDS_PATH_EXPRESS_
  as select from /dmo/booking

  association [0..*] to /dmo/flight as _Flight on  _Flight.carrier_id    = $projection.CarrierId
                                               and _Flight.connection_id = $projection.ConnectionId

{
  key travel_id              as TravelId,
  key booking_id             as BookingId,
      carrier_id             as CarrierId,
      connection_id          as ConnectionId,
      _Flight.seats_occupied as SeatsOccupied
}
