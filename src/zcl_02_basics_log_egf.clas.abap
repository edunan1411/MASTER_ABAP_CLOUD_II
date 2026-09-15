CLASS zcl_02_basics_log_egf DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    "Instance components
    DATA: name    TYPE string,
          address TYPE string.

    METHODS:

      set_attr IMPORTING iv_name    TYPE string
                         iv_address TYPE string,

      get_attr EXPORTING ev_name    TYPE string
                         ev_address TYPE string,

      get_phone IMPORTING iv_phone        TYPE string
                RETURNING VALUE(rv_phone) TYPE string.


    "Static components
    CLASS-DATA: name2 TYPE string.

    CLASS-METHODS:

      set_name IMPORTING iv_name TYPE string,

      get_name EXPORTING ev_name TYPE string.

  PROTECTED SECTION.


  PRIVATE SECTION.

    DATA: private_attr TYPE string.

ENDCLASS.



CLASS zcl_02_basics_log_egf IMPLEMENTATION.
  METHOD get_attr.

    ev_name = name.
    ev_address = address.

  ENDMETHOD.

  METHOD set_attr.

    name = iv_name.
    address = iv_address.

  ENDMETHOD.

  METHOD get_name.

    ev_name = name2.

  ENDMETHOD.

  METHOD set_name.

    name2 = iv_name.

  ENDMETHOD.

  METHOD get_phone.

    rv_phone = iv_phone.

  ENDMETHOD.

ENDCLASS.
