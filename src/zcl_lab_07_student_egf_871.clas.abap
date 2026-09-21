CLASS zcl_lab_07_student_egf_871 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    data: birth_date type zdate READ-ONLY.

    METHODS: set_birth_date IMPORTING iv_date type zdate.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_07_student_egf_871 IMPLEMENTATION.

  METHOD set_birth_date.

    birth_date = iv_date.

  ENDMETHOD.

ENDCLASS.
