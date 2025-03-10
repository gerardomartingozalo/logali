CLASS zcl_27_creditcard_logali_ger DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS set_card_num IMPORTING iv_credit_card_num TYPE string.
    METHODS get_card_num RETURNING VALUE(rv_card_num) TYPE string.

  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA credit_card_num TYPE string.


ENDCLASS.



CLASS zcl_27_creditcard_logali_ger IMPLEMENTATION.

  METHOD set_card_num.
    me->credit_card_num  = iv_credit_card_num.
  ENDMETHOD.

  METHOD get_card_num.
    rv_card_num = me->credit_card_num.
  ENDMETHOD.

ENDCLASS.
