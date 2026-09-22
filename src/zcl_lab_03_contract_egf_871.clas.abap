CLASS zcl_lab_03_contract_egf_871 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    DATA: CNTR_TYPE type c LENGTH 2.

    METHODS:
      set_creation_date
        IMPORTING IV_CREATION_DATE type zdate.

  PROTECTED SECTION.

    data: creation_date type zdate.

  PRIVATE SECTION.

    data: client type string.

ENDCLASS.



CLASS zcl_lab_03_contract_egf_871 IMPLEMENTATION.

  METHOD set_creation_date.

    me->creation_date = iv_creation_date.

  ENDMETHOD.

ENDCLASS.
