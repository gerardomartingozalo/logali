CLASS zcl_07_animal_logali_ger DEFINITION
  PUBLIC
  CREATE PUBLIC .

  PUBLIC SECTION.

  methods walk RETURNING VALUE(rv_walk) TYPE string.


  PROTECTED SECTION.



  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_07_animal_logali_ger IMPLEMENTATION.
  METHOD walk.

    rv_walk = 'the animal walks'.

  ENDMETHOD.

ENDCLASS.
