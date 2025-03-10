CLASS zcl_09_citizen_logali_ger DEFINITION
  PUBLIC

  CREATE PRIVATE
  GLOBAL FRIENDS zcl_10_eu_citizen_logali_ger.

  PUBLIC SECTION.

    METHODS set_id FINAL IMPORTING iv_id TYPE i.

    METHODS get_instace RETURNING VALUE(ro) TYPE REF TO zcl_09_citizen_logali_ger.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_09_citizen_logali_ger IMPLEMENTATION.
  METHOD set_id.

  ENDMETHOD.

  METHOD get_instace.
    ro = NEW zcl_09_citizen_logali_ger(  ).
  ENDMETHOD.

ENDCLASS.
