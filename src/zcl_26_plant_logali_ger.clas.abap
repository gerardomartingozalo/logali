CLASS zcl_26_plant_logali_ger DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  METHODS assign_company importing ir_co_company type  ref to zif_08_co_company_logali_ger
                         RETURNING VALUE(rv_plant) type string.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_26_plant_logali_ger IMPLEMENTATION.
  METHOD assign_company.


   .
  rv_plant = |'Plant was assign....'{ ir_co_company->define_company(  ) }|.

  ENDMETHOD.

ENDCLASS.
