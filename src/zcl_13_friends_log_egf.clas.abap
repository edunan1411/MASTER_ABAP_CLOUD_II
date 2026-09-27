CLASS zcl_13_friends_log_egf DEFINITION
  PUBLIC
*  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS:
      get_friend_data.

  PROTECTED SECTION.

    DATA: father_attr TYPE string.

  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_13_friends_log_egf IMPLEMENTATION.

  METHOD get_friend_data.

    DATA(lo_friend) = NEW zcl_12_friends_log_egf( ).

    lo_friend->privated_attr = 'private'.
    lo_friend->protected_attr = 'protected'.

  ENDMETHOD.

ENDCLASS.
