CLASS zcl_17_abstract_egf DEFINITION ABSTRACT
  PUBLIC

  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS:
      merchandise_output
        RETURNING VALUE(rv_merchandise) type string,

      production_line ABSTRACT
        RETURNING VALUE(rv_production) type string,

      input_product ABSTRACT
        RETURNING VALUE(rv_input) type string.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_17_abstract_egf IMPLEMENTATION.

  METHOD merchandise_output.

    rv_merchandise = 'Merchandise output'.

  ENDMETHOD.

ENDCLASS.
