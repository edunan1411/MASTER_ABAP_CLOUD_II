CLASS zcl_43_view_log_egf DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS:
      display_employee IMPORTING iv_name type string
                                 iv_role type string
                                 iv_out  type REF to if_oo_adt_classrun_out.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_43_view_log_egf IMPLEMENTATION.

  METHOD display_employee.
    iv_out->write( |{ iv_name }--{ iv_role }| ).
  ENDMETHOD.

ENDCLASS.
