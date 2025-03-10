CLASS zcl_24_company_eu_logali_ger DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES zif_08_co_company_logali_ger .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_24_company_eu_logali_ger IMPLEMENTATION.


  METHOD zif_08_co_company_logali_ger~define_company.
    rv_company = 'Company Europe'.

  ENDMETHOD.
ENDCLASS.
