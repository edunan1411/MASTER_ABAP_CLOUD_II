CLASS zcl_11_widening_log_egf DEFINITION
  PUBLIC
  INHERITING FROM zcl_10_narrowing_log_egf
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS: walk REDEFINITION.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_11_widening_log_egf IMPLEMENTATION.

  METHOD walk.

    rv_walk = 'The lion walk'.

  ENDMETHOD.

ENDCLASS.
