@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Comsupcion - Root Entity'
@Metadata.ignorePropagatedAnnotations: true
define root view entity zcds_27_log_egf
provider contract transactional_query
  as projection on zcds_23_log_egf
{
  key TravelId,
      AgencyId,
      CustomerId,
      BeginDate,
      EndDate,
      @Semantics.amount.currencyCode: 'CurrencyCode'      
      BookingFee,
      @Semantics.amount.currencyCode: 'CurrencyCode'      
      TotalPrice,
      CurrencyCode,
      Description,
      Status,
      Createdby,
      Createdat,
      Lastchangedby,
      Lastchangedat,
      /* Associations */
      _Agency,
      _Booking: redirected to composition child zcds_28_log_egf,
      _Customer
}
