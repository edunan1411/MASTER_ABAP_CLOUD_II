CLASS zcl_26_cliente_egf DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS:
      set_credit_card IMPORTING io_credit_card TYPE REF TO zcl_25_credit_card_egf,
      get_credit_card RETURNING VALUE(ro_credit_card) TYPE REF TO zcl_25_credit_card_egf.

  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA: credit_card TYPE REF TO zcl_25_credit_card_egf.
ENDCLASS.



CLASS zcl_26_cliente_egf IMPLEMENTATION.

  METHOD get_credit_card.
    ro_credit_card = me->credit_card.
  ENDMETHOD.

  METHOD set_credit_card.
    me->credit_card = io_credit_card.
  ENDMETHOD.

ENDCLASS.
