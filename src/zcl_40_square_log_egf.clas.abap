CLASS zcl_40_square_log_egf DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES zif_06_log_egf .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_40_square_log_egf IMPLEMENTATION.


  METHOD zif_06_log_egf~draw_shape.
    rv_shape = 'Square'.
  ENDMETHOD.
ENDCLASS.
