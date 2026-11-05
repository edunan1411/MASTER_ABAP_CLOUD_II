@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Association - Path Expression'
@Metadata.ignorePropagatedAnnotations: true
define view entity zcds_14_log_egf
  as select from zcds_13_log_egf

{
  key TravelId,
      AgencyId,
      CustomerId,
      /* Associations */
      _Agency.name
}
