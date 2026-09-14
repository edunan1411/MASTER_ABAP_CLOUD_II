CLASS zcl_01_exec_log_egf DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES: if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_01_exec_log_egf IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.
*    out->write( 'hola que tal' ).


    DATA(lo_inst) = NEW zcl_02_basics_log_egf( ).

*    data: lo_inst2 type REF TO zcl_02_basics_log_egf.
*
*    CREATE OBJECT lo_inst2.

    lo_inst->set_attr(
      iv_name = 'Juan'
      iv_address = 'Pedorra' ).

    lo_inst->get_attr(
      IMPORTING
        ev_name    = data(lv_name)
        ev_address = data(lv_addr) ).

    out->write( |{ lv_name }-{ lv_addr }| ).

    zcl_02_basics_log_egf=>set_name( iv_name = 'Pedro' ).

    zcl_02_basics_log_egf=>get_name(
       IMPORTING
         ev_name = lv_name ).

    out->write( lv_name ).

    out->write( lo_inst->get_phone( '1234-5678' ) ).

  ENDMETHOD.

ENDCLASS.
