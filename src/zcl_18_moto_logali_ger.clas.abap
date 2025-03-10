CLASS zcl_18_moto_logali_ger DEFINITION ABSTRACT
  PUBLIC
*  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

  METHODS set_hp IMPORTING iv_hp type i.

  PROTECTED SECTION.

  METHODS max_speed ABSTRACT IMPORTING iv_max_speed type i.

  PRIVATE SECTION.
  data HP type i.



ENDCLASS.



CLASS zcl_18_moto_logali_ger IMPLEMENTATION.
  METHOD set_hp.

  ENDMETHOD.

ENDCLASS.
