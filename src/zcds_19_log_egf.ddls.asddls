@EndUserText.label: 'Custom Entity'
@ObjectModel.query.implementedBy: 'ABAP:ZCL_QUERY_PROV_LOG_EGF'
define custom entity zcds_19_log_egf
  // with parameters parameter_name : parameter_type
{
  key travel_id   : /dmo/travel_id;
      agency_id   : /dmo/agency_id;
      customer_id : /dmo/customer_id;

}
