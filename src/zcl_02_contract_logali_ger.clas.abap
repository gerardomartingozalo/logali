CLASS zcl_02_contract_logali_ger DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

*Opcionales pero siempre en orden primero public, protected y privada

  PUBLIC SECTION. "disponible desde fuera
*  atributo estatico no depende de una instancia. No tiene acceso a la instancia.
    CLASS-DATA currency TYPE c LENGTH 3.

    data region type string.

*    metodo de instancia. en la implementacion es igual method tanto estatico como de instancia
    METHODS set_client IMPORTING iv_client   TYPE string
                                 iv_location TYPE string
                       EXPORTING ev_status   TYPE string
                       CHANGING  cv_process  TYPE string.


    METHODS get_client EXPORTING ev_client TYPE string.

*Metodo estatico.
    CLASS-METHODS: set_cntr_type IMPORTING iv_cntr_type TYPE string,
      get_cntr_type EXPORTING ev_cntr_type TYPE string.


  PROTECTED SECTION. " solo desde esta clase o sus hijas
*  atributo de instancia. Depende de cada instancia cada vez que se instancia. Tiene acceso al estatico.
    DATA creation_date TYPE sydate.

  PRIVATE SECTION. " solo desde esta clase o clase amiga
    DATA client TYPE string.
    CLASS-DATA cntr_type TYPE string.

ENDCLASS.



CLASS zcl_02_contract_logali_ger IMPLEMENTATION.
  METHOD set_client.

    client = iv_client.
    ev_status = 'OK'.
    cv_process = 'started'.


  ENDMETHOD.

  METHOD get_client.

    ev_client = client.

  ENDMETHOD.

  METHOD get_cntr_type.
    ev_cntr_type = cntr_type.
  ENDMETHOD.

  METHOD set_cntr_type.
    cntr_type = iv_cntr_type.
  ENDMETHOD.

ENDCLASS.
