CLASS zcl_30_product_log_egf DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS:
      return_category RETURNING VALUE(rv_category) TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA: category TYPE string VALUE 'AS'.
ENDCLASS.



CLASS zcl_30_product_log_egf IMPLEMENTATION.
  METHOD return_category.
    rv_category = me->category.
  ENDMETHOD.

ENDCLASS.
