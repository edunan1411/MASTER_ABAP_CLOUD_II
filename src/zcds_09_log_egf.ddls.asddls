@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Text Category'
@Metadata.ignorePropagatedAnnotations: true
define view entity zcds_09_log_egf as select from /dmo/oall_stat_t
{
    @ObjectModel.text.element: [ 'Text' ]
    key overall_status as OverallStatus,
    @Semantics.language: true
    key language as Language,
    @Semantics.text: true
    text as Text
}
