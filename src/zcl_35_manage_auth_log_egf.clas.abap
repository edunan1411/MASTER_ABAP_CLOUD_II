CLASS zcl_35_manage_auth_log_egf DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS: check_user IMPORTING iv_user TYPE syuname
                        RAISING   zcx_01_auth_log_egf.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_35_manage_auth_log_egf IMPLEMENTATION.

  METHOD check_user.
    IF sy-uname = 'CB9980002213'.
      RAISE EXCEPTION TYPE zcx_01_auth_log_egf
        EXPORTING
          textid = zcx_01_auth_log_egf=>no_auth
*         previous =
          msgv1  = |{ sy-uname }|
          msgv2  = 'Create sales order'
*         msgv3  =
*         msgv4  =
        .

    ENDIF.
  ENDMETHOD.

ENDCLASS.
