CLASS zcl_15_interfaces_log_egf DEFINITION
  PUBLIC
*  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES: zcl_01_egf,
      zcl_02_egf.

    ALIASES: set_conn_id FOR zcl_01_egf~set_conn_id,
             get_conn_id FOR zcl_01_egf~get_conn_id,
             get_customer FOR zcl_02_egf~get_customer.




  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_15_interfaces_log_egf IMPLEMENTATION.

  METHOD get_conn_id.

    rv_conn_id = me->zcl_01_egf~conn_id.

  ENDMETHOD.

  METHOD set_conn_id.

    me->zcl_01_egf~conn_id = iv_conn_id.

  ENDMETHOD.

  METHOD get_customer.

    SELECT SINGLE FROM /dmo/customer
      FIELDS FIRST_name,
             last_name
      WHERE customer_id = @iv_cust_id
       INTO @rs_cust_address.

  ENDMETHOD.

  METHOD zcl_03_egf~get_airports.



  ENDMETHOD.

ENDCLASS.
