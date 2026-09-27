CLASS zcl_14_child_friend_log_egf DEFINITION
  PUBLIC
  INHERITING FROM zcl_13_friends_log_egf
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

     METHODS: my_meth.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_14_child_friend_log_egf IMPLEMENTATION.

  METHOD my_meth.

    me->father_attr = 'Child hello'.

    data(lo_inst) = new zcl_12_friends_log_egf( ).

    lo_inst->privated_attr = 'child'.

  ENDMETHOD.

ENDCLASS.
