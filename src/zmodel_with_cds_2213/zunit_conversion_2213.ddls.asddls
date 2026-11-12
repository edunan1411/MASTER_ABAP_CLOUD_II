@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Conversion de Unidades'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZUNIT_CONVERSION_2213 as select from /dmo/fsa_root_a
{
    key id as Id,
    string_property as StringProperty,
    uom as Uom,
    @Semantics.quantity.unitOfMeasure : 'Uom'
    field_with_quantity as FieldWithQuantity

}
