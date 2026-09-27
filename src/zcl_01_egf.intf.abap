INTERFACE zcl_01_egf
  PUBLIC .

  INTERFACES: zcl_03_egf.

  CLASS-DATA: com_id TYPE string.

  DATA: conn_id TYPE string.

  METHODS:
    set_conn_id IMPORTING iv_conn_id TYPE string,

    get_conn_id RETURNING VALUE(rv_conn_id) TYPE string.

ENDINTERFACE.
