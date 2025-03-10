CLASS zcl_08_lion_logali_ger DEFINITION INHERITING FROM zcl_07_animal_logali_ger
  PUBLIC
  final
  CREATE PUBLIC .

  PUBLIC SECTION.

  METHODS walk REDEFINITION.


  PROTECTED SECTION.


  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_08_lion_logali_ger IMPLEMENTATION.
  METHOD walk.

  rv_walk = 'The Lion walks'.

  ENDMETHOD.

ENDCLASS.
