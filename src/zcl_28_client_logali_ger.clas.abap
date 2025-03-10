CLASS zcl_28_client_logali_ger DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS set_credit_card IMPORTING ir_credit_card TYPE REF TO zcl_27_creditcard_logali_ger.
    METHODS get_credit_card RETURNING VALUE(rr_credit_card) TYPE REF TO zcl_27_creditcard_logali_ger.

  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA credit_card TYPE REF TO zcl_27_creditcard_logali_ger.
ENDCLASS.



CLASS zcl_28_client_logali_ger IMPLEMENTATION.
  METHOD set_credit_card.
  me->credit_card = ir_credit_card.
  ENDMETHOD.

  METHOD get_credit_card.
  rr_credit_card = me->credit_card.

  ENDMETHOD.



ENDCLASS.
