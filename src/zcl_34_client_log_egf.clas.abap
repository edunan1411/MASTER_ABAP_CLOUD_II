CLASS zcl_34_client_log_egf DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    DATA: notification TYPE string.

    METHODS:
      on_new_transfer FOR EVENT new_transfer OF zif_05_egf
        importing sender.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_34_client_log_egf IMPLEMENTATION.

  METHOD on_new_transfer.
    me->notification = |{ sender->office }-{ cl_abap_context_info=>get_system_time( ) }|.
  ENDMETHOD.

ENDCLASS.
