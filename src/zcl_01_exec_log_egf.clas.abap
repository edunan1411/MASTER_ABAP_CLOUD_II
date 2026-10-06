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

*data(lo_interf) = new zcl_15_interfaces_log_egf( ).
*
*lo_interf->get_conn_id(
**  RECEIVING
**    rv_conn_id =
*).
*
*lo_interf->zcl_03_egf~get_airports(
*  EXPORTING
*    iv_airport_id = '001'
**  RECEIVING
**    rs_airport    =
*).

**Polymorphism

*    DATA: gt_airplanes   TYPE STANDARD TABLE OF REF TO zcl_19_polymofirsm_log_egf,
*          lo_airplane    TYPE REF TO zcl_19_polymofirsm_log_egf,
*          lo_cargo_plane TYPE REF TO zcl_20_cargo_plane_log_egf,
*          lo_pass_plane  TYPE REF TO zcl_21_pass_plane_log_egf.
*
*    lo_cargo_plane = NEW #(  ).
*    APPEND lo_cargo_plane TO gt_airplanes.
*
*    lo_pass_plane = NEW #(  ).
*    APPEND lo_pass_plane TO gt_airplanes.
*
*    LOOP AT gt_airplanes INTO lo_airplane.
*      out->write( lo_airplane->airplane_type( ) ).
*    ENDLOOP.

**Polymorphism with interfaces

*    DATA: gt_companies TYPE STANDARD TABLE OF REF TO zif_04_egf,
*          lo_company   TYPE REF TO zif_04_egf,
*          lo_comp_eu   TYPE REF TO zcl_22_polym_interfaces_egf,
*          lo_comp_usa  TYPE REF TO zcl_23_polym_interfaces_2_egf,
*          lo_plant     TYPE REF TO zcl_24_plant_egf.
*
*    lo_comp_eu = NEW #(  ).
*    APPEND lo_comp_eu TO gt_companies.
*
*    lo_comp_usa = NEW #(  ).
*    APPEND lo_comp_usa TO gt_companies.
*
*    lo_plant = NEW #(  ).
*
*    loop at gt_companies into lo_company.
*      out->write( lo_company->define_company( ) ).
*      out->write( lo_plant->assign_company( io_company = lo_company ) ).
*    endloop.

** Association
*data(lo_credit_card) = new zcl_25_credit_card_egf(  ).
*data(lo_client) = new zcl_26_cliente_egf( ).
*
*lo_credit_card->set_card_num( '9999 8888 7777 6666' ).
*lo_client->set_credit_card( lo_credit_card ).
*
*out->write( lo_client->get_credit_card( )->get_card_num( ) ).

**Composition
*    DATA(lo_keyboard) = NEW zcl_27_keyboard_egf( ).
*    DATA(lo_laptop) = NEW zcl_28_laptop_egf( lo_keyboard ).
*
*    lo_keyboard->keyboard_type = 'ES'.
*
*    out->write( lo_laptop->keyboard->keyboard_type ).
*

***Composition
*    DATA: lo_vat_ind_1 TYPE REF TO zcl_29_vat_ind_egf,
*          lo_vat_ind_2 TYPE REF TO zcl_29_vat_ind_egf,
*          lo_vat_ind_3 TYPE REF TO zcl_29_vat_ind_egf.
*
*    lo_vat_ind_1 = NEW #(  ).
**    lo_vat_ind_2 = NEW #(  ).
**    lo_vat_ind_3 = NEW #(  ).
*
*    lo_vat_ind_2 = lo_vat_ind_1.
*    lo_vat_ind_3 = lo_vat_ind_1.
*
*    lo_vat_ind_1->vat_ind = 'A1'.
*    lo_vat_ind_2->vat_ind = 'A2'.
*    lo_vat_ind_3->vat_ind = 'A3'.
*
*    out->write( lo_vat_ind_1->vat_ind ).
*    out->write( lo_vat_ind_2->vat_ind ).
*    out->write( lo_vat_ind_3->vat_ind ).

**Generic Class Object
*  data: lo_object type REF TO object.
*
*  lo_object = new zcl_30_product_log_egf( ).
*
*  data(lv_method_name) = 'RETURN_CATEGORY'.
*  DATA lv_category type string.
*
*  call method lo_object->(lv_method_name) RECEIVING rv_category = lv_category.
*  out->write( lv_category ).

*Events
*  data(lo_timer) = new zcl_31_timer_log_egf( ).
*  data(lo_conexion) = new zcl_32_conexion_log_egf( ).
*
** Handle reference
*  SET HANDLER lo_conexion->on_time_out for lo_timer.
*
*  do.
*    wait up to 1 seconds.
*    lo_timer->incremento_counter( 1 ).
*
*    if lo_conexion->hour is INITIAL.
*      out->write( |Event not yet excecuted: { cl_abap_context_info=>get_system_time( ) }| ).
*    else.
*      out->write( |Event was raised at: { lo_conexion->hour }-{ lo_conexion->sender_user }| ).
*      exit.
*    endif.
*
*  enddo.

*Events with Interfaces.
*    DATA(lo_central_bank) = NEW zcl_33_banks_log_egf( ).
*    DATA(lo_client_bank) = NEW zcl_34_client_log_egf( ).
*
*    SET HANDLER lo_client_bank->on_new_transfer FOR lo_central_bank.
*
*    DO 5 TIMES.
*      WAIT UP TO 1 SECONDS.
*      out->write( lo_central_bank->create_notificacion( )  ).
*      out->write(  lo_client_bank->notification ).
*      IF sy-index = 3.
*        SET HANDLER lo_client_bank->on_new_transfer FOR lo_central_bank ACTIVATION abap_false.
*        lo_client_bank->notification = 'No Handler for event new transfer'.
*      ENDIF.
*    ENDDO.

*Exemptions
    TRY.
        DATA(lo_exemp) = NEW zcl_35_manage_auth_log_egf( ).
        lo_exemp->check_user( sy-uname ).

     " CATCH cx_root INTO DATA(lx_ex).
     "   out->write( lx_ex->get_text( ) ).

      CATCH zcx_01_auth_log_egf into data(lx_excep).
      out->write( lx_excep->get_text( ) ).

    ENDTRY.





  ENDMETHOD.
ENDCLASS.
