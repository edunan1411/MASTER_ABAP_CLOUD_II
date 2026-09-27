CLASS zcl_10_narrowing_log_egf DEFINITION
  PUBLIC
  CREATE PUBLIC .

  PUBLIC SECTION.

    methods: walk RETURNING VALUE(rv_walk) TYPE string.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_10_narrowing_log_egf IMPLEMENTATION.

  METHOD walk.

    rv_walk = 'The animal walk'.

  ENDMETHOD.

ENDCLASS.
