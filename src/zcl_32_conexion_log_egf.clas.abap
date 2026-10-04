CLASS zcl_32_conexion_log_egf DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    DATA: hour TYPE zsyst_uzeit,
          sender_user type string.

    METHODS:
      on_time_out FOR EVENT time_out OF zcl_31_timer_log_egf
        IMPORTING ev_hour
                  sender.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_32_conexion_log_egf IMPLEMENTATION.

  METHOD on_time_out.
    me->hour = ev_hour.
    me->sender_user = sender->user.
  ENDMETHOD.

ENDCLASS.
