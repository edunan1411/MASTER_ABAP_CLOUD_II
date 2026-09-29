CLASS zcl_22_polym_interfaces_egf DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES: zif_04_egf.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_22_polym_interfaces_egf IMPLEMENTATION.

  METHOD zif_04_egf~define_company.
    rv_company = 'Company Europe...'.
  ENDMETHOD.

ENDCLASS.
