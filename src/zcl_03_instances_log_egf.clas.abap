CLASS zcl_03_instances_log_egf DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    CLASS-data: log type string.

    METHODS: constructor.

    CLASS-METHODS: class_constructor.

  PROTECTED SECTION.

  PRIVATE SECTION.


ENDCLASS.



CLASS zcl_03_instances_log_egf IMPLEMENTATION.

  METHOD class_constructor.

    log = | { log } - Static Constructor -->|.

  ENDMETHOD.

  METHOD constructor.

    log = | { log } - Instance Constructor -->|.

  ENDMETHOD.

ENDCLASS.
