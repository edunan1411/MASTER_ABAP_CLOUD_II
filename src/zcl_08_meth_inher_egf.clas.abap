CLASS zcl_08_meth_inher_egf DEFINITION
  PUBLIC
*  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    TYPES: BEGIN OF ty_name,
            name type string,
           end of ty_name.

    data: gt_name type TABLE of ty_name.

    methods:
      set_name
        IMPORTING
          is_name type ty_name.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_08_meth_inher_egf IMPLEMENTATION.

  METHOD set_name.

    append is_name to gt_name.

  ENDMETHOD.

ENDCLASS.
