CLASS zcl_05_plant_logali_ger DEFINITION INHERITING FROM zcl_04_company_logali_ger
  PUBLIC
  CREATE PUBLIC .

  PUBLIC SECTION.

*  extendemos la funcionalidad
    METHODS constructor IMPORTING iv_quotation TYPE string
                                  iv_product   TYPE string.

    DATA products TYPE string.



    METHODS set_company_code REDEFINITION.

  PROTECTED SECTION.



  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_05_plant_logali_ger IMPLEMENTATION.
  METHOD constructor.

*primera instruccion se llama primero a la clase padre a traves del super para cumplir con la obligacion
    super->constructor( iv_quotation = iv_quotation ).


*    ampliamos con logica adicional
    me->products = iv_product.

  ENDMETHOD.

  METHOD set_company_code.

*  queremos llamar a la logica del padre y continuar con la del hijo
    super->set_company_code( iv_company_code = iv_company_code ).

    me->company_code = 'ABCD'.
  ENDMETHOD.

ENDCLASS.
