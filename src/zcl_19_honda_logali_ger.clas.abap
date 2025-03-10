CLASS zcl_19_honda_logali_ger DEFINITION ABSTRACT INHERITING FROM zcl_18_moto_logali_ger
  PUBLIC
*  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  PROTECTED SECTION.

*no tienes la obligacion de implementar los metodos por ser abstracta
  METHODS set_model ABSTRACT EXPORTING ev_model type string.

  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_19_honda_logali_ger IMPLEMENTATION.



ENDCLASS.
