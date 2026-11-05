@EndUserText.label: 'Abstract Entity'
define abstract entity zcds_20_log_egf

{
  key Travel_id   : /dmo/travel_id;
      agency_id   : /dmo/agency_id;
      customer_id : /dmo/customer_id;
      begin_date  : /dmo/begin_date;
      end_date    : /dmo/end_date;
      currency    : abap.cuky;

}
