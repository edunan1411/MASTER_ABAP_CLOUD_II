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

  ENDMETHOD.

ENDCLASS.
