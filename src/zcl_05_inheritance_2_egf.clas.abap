CLASS zcl_05_inheritance_2_egf DEFINITION INHERITING FROM zcl_04_inheritance_1_egf
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS:
      my_meth.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_05_inheritance_2_egf IMPLEMENTATION.

  METHOD my_meth.

    me->attr1 = 'hijo'.

  ENDMETHOD.

ENDCLASS.
