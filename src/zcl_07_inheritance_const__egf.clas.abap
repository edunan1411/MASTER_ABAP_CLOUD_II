CLASS zcl_07_inheritance_const__egf DEFINITION INHERITING FROM zcl_06_inheritance_const_egf
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS:
      constructor
        IMPORTING
          iv_view_type TYPE string
          iv_box       TYPE string.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_07_inheritance_const__egf IMPLEMENTATION.

  METHOD constructor.

    super->constructor( iv_view_type = iv_view_type ).

    me->box = iv_box.

  ENDMETHOD.

ENDCLASS.
