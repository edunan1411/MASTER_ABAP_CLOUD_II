CLASS zcl_33_banks_log_egf DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES: zif_05_egf.

    METHODS:
      create_notificacion RETURNING VALUE(rv_text) TYPE string.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_33_banks_log_egf IMPLEMENTATION.

  METHOD create_notificacion.
    rv_text = |Event raise...new transfer-{ cl_abap_context_info=>get_system_time( ) }|.
    raise EVENT zif_05_egf~new_transfer.
  ENDMETHOD.

ENDCLASS.
