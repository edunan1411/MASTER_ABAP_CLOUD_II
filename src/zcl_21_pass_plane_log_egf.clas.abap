CLASS zcl_21_pass_plane_log_egf DEFINITION
  PUBLIC
  INHERITING FROM zcl_19_polymofirsm_log_egf
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS: airplane_type REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_21_pass_plane_log_egf IMPLEMENTATION.

  METHOD airplane_type.
    rv_airplane_type = 'Passanger plane'.
  ENDMETHOD.

ENDCLASS.
