CLASS zcl_lab_08_work_record_egf_871 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    class-data: date type zdate,
                first_name type string,
                last_name type string,
                surname type string.


    class-METHODS: OPEN_NEW_RECORD
                     IMPORTING iv_date       type zdate
                               iv_first_name type string
                               iv_last_name  type string
                               iv_surname    type string OPTIONAL.

  PROTECTED SECTION.

  PRIVATE SECTION.


ENDCLASS.



CLASS zcl_lab_08_work_record_egf_871 IMPLEMENTATION.

  METHOD open_new_record.

    date = iv_date.

    first_name = iv_first_name.

    last_name = iv_last_name.

    if iv_surname is SUPPLIED.

      surname = iv_surname.

    endif.

  ENDMETHOD.

ENDCLASS.
