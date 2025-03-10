CLASS zcl_padre_2_ger DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  CLASS-METHODS metodo2 RETURNING VALUE(rv_text) TYPE string.
  CLASS-METHODS metodo2_prima RETURNING VALUE(rv_text) TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_padre_2_ger IMPLEMENTATION.
  METHOD metodo2.
    rv_text = |Método 2 de Clase Padre 2|.
  ENDMETHOD.
  METHOD metodo2_prima.
    rv_text = |Método 2 prima de Clase Padre 2|.
  ENDMETHOD.

ENDCLASS.
