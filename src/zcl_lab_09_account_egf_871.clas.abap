CLASS zcl_lab_09_account_egf_871 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS:
      set_attr
        IMPORTING iban TYPE string,

      get_attr
        EXPORTING iban type string.

  PROTECTED SECTION.

  PRIVATE SECTION.

    data: iban type string.

ENDCLASS.



CLASS zcl_lab_09_account_egf_871 IMPLEMENTATION.

  METHOD get_attr.

    iban = me->iban.

  ENDMETHOD.

  METHOD set_attr.

    me->iban = iban.

  ENDMETHOD.

ENDCLASS.
