CLASS zcl_14_travel_agency_logal_ger DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

*siempre en la encapsulacion publica
    INTERFACES zif_01_agency_logali_ger.
  PROTECTED SECTION.
  PRIVATE SECTION.

    DATA agency_type TYPE string.



ENDCLASS.



CLASS zcl_14_travel_agency_logal_ger IMPLEMENTATION.

  METHOD zif_01_agency_logali_ger~set_name.
    me->agency_type = iv_type.
  ENDMETHOD.


  METHOD zif_01_agency_logali_ger~get_name.

    rv_type = me->agency_type.

  ENDMETHOD.

  METHOD zif_01_agency_logali_ger~set_address.

    zif_01_agency_logali_ger~agency_address = iv_address.

  ENDMETHOD.



ENDCLASS.
