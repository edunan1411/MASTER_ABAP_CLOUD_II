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

*
*    DATA(lo_inst) = NEW zcl_02_basics_log_egf( ).

*    data: lo_inst2 type REF TO zcl_02_basics_log_egf.
*
*    CREATE OBJECT lo_inst2.

*    lo_inst->set_attr(
*      iv_name = 'Juan'
*      iv_address = 'Pedorra' ).
*
*    lo_inst->get_attr(
*      IMPORTING
*        ev_name    = data(lv_name)
*        ev_address = data(lv_addr) ).
*
*    out->write( |{ lv_name }-{ lv_addr }| ).
*
*    zcl_02_basics_log_egf=>set_name( iv_name = 'Pedro' ).
*
*    zcl_02_basics_log_egf=>get_name(
*       IMPORTING
*         ev_name = lv_name ).
*
*    out->write( lv_name ).
*
*    out->write( lo_inst->get_phone( '1234-5678' ) ).
*
*    out->write(  lo_inst->get_flight( 'AA' ) ).
*
*    out->write( |{ zcl_02_basics_log_egf=>c_edu-name }-{ zcl_02_basics_log_egf=>c_edu-master }| ).
*
*    out->write( lo_inst->get_flights( iv_carrier_id    = 'LH'
*                                      iv_connection_id = '' ) ).

*  out->write( lo_inst->company ).
*
*  lo_inst->company = 'PEPE'.
*
*  out->write( lo_inst->company ).

**Instance
*  data(lo_inst) = new zcl_03_instances_log_egf(  ).
*
*  out->write( zcl_03_instances_log_egf=>log ).
*
*  data(lo_inst2) = new zcl_03_instances_log_egf(  ).
*
*  out->write( zcl_03_instances_log_egf=>log ).

**Heritance
*    data(lo_heritance) = new zcl_05_inheritance_2_egf(  ).
*
*    out->write( lo_heritance->get_architecture( ) ).

** Constructor
*    DATA(lo_her_const) = NEW zcl_07_inheritance_const__egf( iv_view_type = 'VIEW1'
*                                                            iv_box       = 'BOX1' ).

**Narrowing Cast -UP

*    DATA(lo_animal) = NEW zcl_10_narrowing_log_egf( ).
*
*    DATA(lo_lion) = NEW zcl_11_widening_log_egf( ).
*
*    out->write( lo_animal->walk( ) ).
*
*    out->write( lo_lion->walk( ) ).
*
*    lo_animal = lo_lion.
*
*
*    out->write( 'Narrowing Cast' ).
*
*    out->write( lo_animal->walk( ) ).
*
*    out->write( lo_lion->walk( ) ).
*
*** Widening Cast - Down
*
*    TRY.
*
*        lo_lion ?= lo_animal.
*
*      CATCH cx_sy_move_cast_error.
*
*        out->write( 'Casting error' ).
*
*        RETURN.
*
*    ENDTRY.
*
*
*    out->write( 'Widening Cast' ).
*
*    out->write( lo_animal->walk( ) ).
*
*    out->write( lo_lion->walk( ) ).

** Interfaces

data(lo_interf) = new zcl_15_interfaces_log_egf( ).

lo_interf->get_conn_id(
*  RECEIVING
*    rv_conn_id =
).

lo_interf->zcl_03_egf~get_airports(
  EXPORTING
    iv_airport_id = '001'
*  RECEIVING
*    rs_airport    =
).



  ENDMETHOD.

ENDCLASS.
