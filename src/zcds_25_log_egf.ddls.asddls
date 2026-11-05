@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface - Root Entity'
@Metadata.ignorePropagatedAnnotations: true
define root view entity zcds_25_log_egf
  provider contract transactional_interface
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
      _Booking: redirected to composition child zcds_26_log_egf,
      _Customer
}
