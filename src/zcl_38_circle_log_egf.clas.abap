CLASS zcl_38_circle_log_egf DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES zif_06_log_egf .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_38_circle_log_egf IMPLEMENTATION.


  METHOD zif_06_log_egf~draw_shape.
    rv_shape = 'Circle'.
  ENDMETHOD.
ENDCLASS.
