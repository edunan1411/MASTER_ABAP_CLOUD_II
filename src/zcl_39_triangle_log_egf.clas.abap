CLASS zcl_39_triangle_log_egf DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES zif_06_log_egf .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_39_triangle_log_egf IMPLEMENTATION.


  METHOD zif_06_log_egf~draw_shape.
    rv_shape = 'Triangle'.
  ENDMETHOD.
ENDCLASS.
