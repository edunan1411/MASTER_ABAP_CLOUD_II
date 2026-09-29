CLASS zcl_16_interfaces_2_log_egf DEFINITION
  PUBLIC
  INHERITING FROM zcl_15_interfaces_log_egf
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS: my_meth.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_16_interfaces_2_log_egf IMPLEMENTATION.

  METHOD my_meth.

    me->zif_01_egf~conn_id = '002'.

  ENDMETHOD.

ENDCLASS.
