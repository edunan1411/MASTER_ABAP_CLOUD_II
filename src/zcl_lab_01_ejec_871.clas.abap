CLASS zcl_lab_01_ejec_871 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES: if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_01_ejec_871 IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

    data(lo_inst) = new zcl_lab_04_person_egf_871( ).

    lo_inst->set_age( iv_age = 50 ).

    lo_inst->get_age(
       IMPORTING
         ev_age = data(age) ).

    out->write( age ).

    data(lo_inst2) = new zcl_lab_05_flight_egf_871(  ).

    out->write( lo_inst2->get_vuelos( iv_carrid = 'AA'
                                      iv_connid = '2678' ) ).

    DATA lv_elements TYPE zcl_mf_lab_06_elements=>ty_elem_objects.


    lv_elements-class = 'Clase Pepe'.

    lv_elements-instance = 'Instancia 1'.

    lv_elements-reference = 'Referencia 2'.

    data(lo_elements) = new zcl_lab_06_elements_egf_871(  ).

    lo_elements->set_object( iv_elements = lv_elements ).

    out->write( lo_elements->ls_elements ).

    out->write( |{ zcl_lab_06_elements_egf_871=>c_const-c1 }-{ zcl_lab_06_elements_egf_871=>c_const-c2 }-{ zcl_lab_06_elements_egf_871=>c_const-c3 }-{ zcl_lab_06_elements_egf_871=>c_const-c4 }| ).


  ENDMETHOD.

ENDCLASS.
