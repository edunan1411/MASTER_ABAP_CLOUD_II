CLASS zcl_04_inheritance_1_egf DEFINITION
  PUBLIC
*  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    DATA: architecture TYPE string VALUE '64 bits'.

    METHODS:
      get_architecture
        RETURNING VALUE(rv_architecture) TYPE string.

  PROTECTED SECTION.

    DATA: attr1 TYPE string.

  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_04_inheritance_1_egf IMPLEMENTATION.

  METHOD get_architecture.

    rv_architecture = me->architecture.

  ENDMETHOD.

ENDCLASS.
