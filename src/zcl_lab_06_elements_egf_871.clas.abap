CLASS zcl_lab_06_elements_egf_871 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    TYPES: BEGIN OF ty_elem_objects,
             class     TYPE string,
             instance  TYPE string,
             reference TYPE string,
           END OF ty_elem_objects.

    DATA: ls_elements TYPE ty_elem_objects.

    METHODS: set_object
      IMPORTING
        iv_elements TYPE ty_elem_objects.

  PROTECTED SECTION.

  PRIVATE SECTION.

ENDCLASS.



CLASS zcl_lab_06_elements_egf_871 IMPLEMENTATION.

  METHOD set_object.

    ls_elements = iv_elements.

  ENDMETHOD.

ENDCLASS.
