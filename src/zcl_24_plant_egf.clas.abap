CLASS zcl_24_plant_egf DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS:
      assign_company IMPORTING io_company      TYPE REF TO zif_04_egf
                     RETURNING VALUE(rv_plant) TYPE string.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_24_plant_egf IMPLEMENTATION.

  METHOD assign_company.
    rv_plant = |Plant was assigned to ... { io_company->define_company( ) }|.
  ENDMETHOD.

ENDCLASS.
