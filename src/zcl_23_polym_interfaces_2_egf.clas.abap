CLASS zcl_23_polym_interfaces_2_egf DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES: zif_04_egf.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_23_polym_interfaces_2_egf IMPLEMENTATION.

  METHOD zif_04_egf~define_company.
    rv_company = 'Company USA...'.
  ENDMETHOD.

ENDCLASS.
