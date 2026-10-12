CLASS zcl_41_factory_log_egf DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    methods:
      get_shape
        IMPORTING iv_shape_type type string
        RETURNING VALUE(ro_shape) type REF TO zif_06_log_egf.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_41_factory_log_egf IMPLEMENTATION.
  METHOD get_shape.
    case iv_shape_type.
      when 'Circle'.
        ro_shape = new zcl_38_circle_log_egf( ).
      when 'Triangle'.
        ro_shape = new zcl_39_triangle_log_egf( ).
      when 'Square'.
        ro_shape = new zcl_40_square_log_egf( ).
        endcase.
  ENDMETHOD.

ENDCLASS.
