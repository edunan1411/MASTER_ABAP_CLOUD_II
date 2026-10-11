CLASS zcl_02_conexion_edunan DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    DATA hour TYPE zsyst_uzeit.

    METHODS:
      on_time_out FOR EVENT time_out OF zcl_01_temporizador_edunan
        IMPORTING ev_hour.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_02_conexion_edunan IMPLEMENTATION.

  METHOD on_time_out.
    me->hour = ev_hour.
  ENDMETHOD.

ENDCLASS.
