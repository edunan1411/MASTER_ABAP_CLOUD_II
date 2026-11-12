@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Lista de Clientes'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZDATA_MODELING_2213
  as select from /dmo/customer
{
  key customer_id                     as CustomerId,
      first_name                      as FirstName,
      last_name                       as LastName,
      $session.system_date            as Fecha,
      $session.client                 as ClientId,
      cast('9980002213' as abap.int8) as CustomerIdUser,
      case country_code
        when 'US' then 'United State'
        when 'DE' then 'Germany'
        else 'Other Country'
      end                             as Country

}
