CLASS zcl_18_abtract_child_egf DEFINITION ABSTRACT
  PUBLIC
  INHERITING FROM zcl_17_abstract_egf
  "FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS: production_line REDEFINITION,
             input_product REDEFINITION,
             my_meth ABSTRACT.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_18_abtract_child_egf IMPLEMENTATION.

  METHOD input_product.
    rv_input = 'input products'.
  ENDMETHOD.

  METHOD production_line.
    rv_production = 'production_line'.
  ENDMETHOD.

ENDCLASS.
