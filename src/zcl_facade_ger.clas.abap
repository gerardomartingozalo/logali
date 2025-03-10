CLASS zcl_facade_ger DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .



  PUBLIC SECTION.

      INTERFACES if_oo_adt_classrun.


  PROTECTED SECTION.
  PRIVATE SECTION.

ENDCLASS.



CLASS zcl_facade_ger IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

   out->write( zcl_padre_1_ger=>metodo1(  ) ).
   out->write( zcl_padre_2_ger=>metodo2(  ) ).
   out->write( zcl_padre_2_ger=>metodo2_prima(  ) ).
   out->write( zcl_padre_3_ger=>metodo3(  ) ).

  ENDMETHOD.

ENDCLASS.
