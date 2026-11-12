@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Uso de Parametros'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZPARAM_CDS_2213
  with parameters
    pFligth_Date : abap.dats
  as select from /dmo/booking
{
  key travel_id   as TravelId,
  key booking_id  as BookingId,
      customer_id as CustomerId,
      flight_date as FlightDate

}
where
  flight_date = $parameters.pFligth_Date
