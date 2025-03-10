CLASS zcl_13_ny_plant_logali_ger DEFINITION INHERITING FROM zcl_11_plant_logali_ger
*la clase que hereda tambien tiene acceso a los privados si es amiga el padre
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

  METHODS get_product_sl.

  PROTECTED SECTION.

  PRIVATE SECTION.

ENDCLASS.



CLASS zcl_13_ny_plant_logali_ger IMPLEMENTATION.
  METHOD get_product_sl.

  data(lo_storage_loc) = new zcl_12_storage_loc_logali_ger(  ).
  lo_storage_loc->product = 'PC'.

  lo_storage_loc->set_product( 'PC' ).

  ENDMETHOD.

ENDCLASS.
