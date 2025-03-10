INTERFACE zif_01_agency_logali_ger
  PUBLIC .

*es posible definir:
*atributos estaticos y instancia
*constantes
*tipos

  CLASS-DATA agency_address TYPE string.


  METHODS: set_name IMPORTING iv_type TYPE string,
    get_name RETURNING VALUE(rv_type) TYPE string.



  CLASS-METHODS set_address IMPORTING iv_address TYPE string.


ENDINTERFACE.
