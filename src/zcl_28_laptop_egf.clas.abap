CLASS zcl_28_laptop_egf DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    data: keyboard type REF TO zcl_27_keyboard_egf.

    METHODS:
      constructor IMPORTING io_keyboard type REF TO zcl_27_keyboard_egf.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_28_laptop_egf IMPLEMENTATION.

  METHOD constructor.
    me->keyboard = io_keyboard.
  ENDMETHOD.

ENDCLASS.
