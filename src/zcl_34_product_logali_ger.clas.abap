CLASS zcl_34_product_logali_ger DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS return_category   RETURNING VALUE(rv_category) TYPE string.

  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA category TYPE string VALUE 'A5'.


ENDCLASS.



CLASS zcl_34_product_logali_ger IMPLEMENTATION.
  METHOD return_category.
    rv_category = me->category.
  ENDMETHOD.

ENDCLASS.
