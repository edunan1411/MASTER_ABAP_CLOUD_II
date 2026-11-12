@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Association with Parameters'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZCDS_PARAM_ASSOC_2213
  with parameters pcarrier_id : /dmo/carrier_id 
  as select from /dmo/flight as Travel

  association [0..1] to /dmo/carrier as _Carrier on _Carrier.carrier_id = $projection.CarrierId
{
  key Travel.carrier_id    as CarrierId,
  key Travel.connection_id as ConnectionId,
  key Travel.flight_date   as FlightDate,
      _Carrier.name        as Name
} where Travel.carrier_id = $parameters.pcarrier_id
