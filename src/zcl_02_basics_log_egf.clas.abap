CLASS zcl_02_basics_log_egf DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .


  PUBLIC SECTION.

    TYPES: BEGIN OF ty_flight,
             carrier_id    TYPE /dmo/carrier_id,
             connection_id TYPE /dmo/connection_id,
             flight_date   TYPE /dmo/flight_date,
             price         TYPE /dmo/flight_price,
           END OF ty_flight,

           tt_flight TYPE TABLE OF ty_flight WITH EMPTY KEY.

    CONSTANTS: BEGIN OF c_edu,
                 name   TYPE string VALUE 'pepe',
                 group  TYPE string VALUE 'c871',
                 master TYPE string VALUE 'ABAP CLOUD II',
               END OF c_edu.

    "Instance components
    DATA: name    TYPE string,
          address TYPE string.


    DATA: company TYPE string VALUE 'TGN'.

    METHODS:

      set_attr IMPORTING iv_name    TYPE string
                         iv_address TYPE string,

      get_attr EXPORTING ev_name    TYPE string
                         ev_address TYPE string,

      get_phone IMPORTING iv_phone        TYPE string
                RETURNING VALUE(rv_phone) TYPE string,

      get_flight IMPORTING iv_carrier_id    TYPE string
                 RETURNING VALUE(rs_flight) TYPE ty_flight,

      get_flights IMPORTING iv_carrier_id    TYPE string
                            iv_connection_id TYPE string OPTIONAL
                  RETURNING VALUE(rt_flight) TYPE tt_flight,

      my_atrr IMPORTING private_attr type string
              RETURNING VALUE(rv_private_attr) TYPE string.


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

  METHOD get_flight.

    SELECT SINGLE carrier_id, connection_id, flight_date, price
          FROM /dmo/flight WHERE carrier_id = @iv_carrier_id
          INTO @rs_flight.

  ENDMETHOD.

  METHOD get_flights.

    IF iv_connection_id IS SUPPLIED.

      SELECT FROM /dmo/flight FIELDS carrier_id, connection_id, flight_date, price
        WHERE carrier_id    = @iv_carrier_id
          AND connection_id = @iv_connection_id
        INTO TABLE @rt_flight.

    ELSE.

      SELECT FROM /dmo/flight FIELDS carrier_id, connection_id, flight_date, price
        WHERE carrier_id    = @iv_carrier_id
        INTO TABLE @rt_flight.

    ENDIF.

  ENDMETHOD.

  METHOD my_atrr.

    me->private_attr = private_attr.

    rv_private_attr = me->private_attr.

  ENDMETHOD.

ENDCLASS.
