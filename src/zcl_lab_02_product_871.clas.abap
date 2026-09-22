CLASS zcl_lab_02_product_871 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS:
      set_product
        IMPORTING iv_product TYPE matnr,
      set_creationdate
        IMPORTING iv_date type zdate.

  PROTECTED SECTION.

  PRIVATE SECTION.

   data: product type matnr,
         creation_date type zdate.
ENDCLASS.



CLASS zcl_lab_02_product_871 IMPLEMENTATION.
  METHOD set_creationdate.

    me->creation_date = iv_date.

  ENDMETHOD.

  METHOD set_product.

    me->product = iv_product.

  ENDMETHOD.

ENDCLASS.
