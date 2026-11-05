@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Association Filter with Path Expression'
@Metadata.ignorePropagatedAnnotations: true
define view entity zcds_15_log_egf
  as select from /dmo/travel
  
  association [0..*] to I_CurrencyText as _Currency on _Currency.Currency = $projection.Currency 
{
  key travel_id     as TravelId,
      @Semantics.amount.currencyCode: 'Currency'
      total_price   as TotalPrice,
      currency_code as Currency,
      _Currency[1:Language = $session.system_language ].CurrencyName
}      
