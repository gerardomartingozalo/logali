CLASS zcl_12_storage_loc_logali_ger DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC
  global FRIENDS zcl_11_plant_logali_ger.

  PUBLIC SECTION.

  PROTECTED SECTION.

  PRIVATE SECTION.
  data  product type string.

  methods set_product  IMPORTING iv_product type string.

ENDCLASS.



CLASS zcl_12_storage_loc_logali_ger IMPLEMENTATION.
  METHOD set_product.

  product = iv_product.

  ENDMETHOD.

ENDCLASS.
