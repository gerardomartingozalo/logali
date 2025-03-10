CLASS zcl_11_plant_logali_ger DEFINITION
  PUBLIC
*  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

  methods get_product RETURNING VALUE(rv_product) type string.

  PROTECTED SECTION.

  PRIVATE SECTION.

ENDCLASS.



CLASS zcl_11_plant_logali_ger IMPLEMENTATION.
  METHOD get_product.

  data(lo_storage_loc) = new zcl_12_storage_loc_logali_ger(  ).
  lo_storage_loc->product = 'PC'.

  lo_storage_loc->set_product( 'PC' ).

  ENDMETHOD.

ENDCLASS.
