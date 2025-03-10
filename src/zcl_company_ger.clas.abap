CLASS zcl_company_ger DEFINITION
  PUBLIC

  CREATE PUBLIC .

  PUBLIC SECTION.
  methods set_company IMPORTING iv_company_code type string.
  METHODS get_company RETURNING VALUE(rv_company_code) type string.


  PROTECTED SECTION.
  PRIVATE SECTION.
  data company type string.
ENDCLASS.



CLASS zcl_company_ger IMPLEMENTATION.
   METHOD set_company.

  me->company = iv_company_code.

  ENDMETHOD.

  METHOD get_company.
  rv_company_code = me->company.

  ENDMETHOD.



ENDCLASS.
