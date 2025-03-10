CLASS zcl_administrador_ger DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES zif_employee_ger.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_administrador_ger IMPLEMENTATION.
  METHOD zif_employee_ger~set_name.
    me->zif_employee_ger~name = iv_name.
  ENDMETHOD.

ENDCLASS.
