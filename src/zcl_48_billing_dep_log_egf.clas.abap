CLASS zcl_48_billing_dep_log_egf DEFINITION
  PUBLIC
  INHERITING FROM zcl_46_observer_log_egf
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    DATA state TYPE string.

    METHODS: on_modified_state REDEFINITION.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_48_billing_dep_log_egf IMPLEMENTATION.

  METHOD on_modified_state.
    me->state = ev_new_state.
  ENDMETHOD.

ENDCLASS.
