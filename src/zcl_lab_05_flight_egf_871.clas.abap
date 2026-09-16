CLASS zcl_lab_05_flight_egf_871 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS:
      get_vuelos
        IMPORTING iv_carrid    TYPE string
                  iv_connid    TYPE string
        RETURNING VALUE(rv_ok) TYPE string.

  PROTECTED SECTION.

  PRIVATE SECTION.

ENDCLASS.



CLASS zcl_lab_05_flight_egf_871 IMPLEMENTATION.

  METHOD get_vuelos.


    SELECT SINGLE @abap_true FROM /dmo/flight
                                WHERE carrier_id    = @iv_carrid
                                  AND connection_id = @iv_connid
                         INTO @DATA(existe).

    IF existe = abap_true.

      rv_ok = 'X'.

    ELSE.

      rv_ok = ' '.

    ENDIF.

  ENDMETHOD.

ENDCLASS.
