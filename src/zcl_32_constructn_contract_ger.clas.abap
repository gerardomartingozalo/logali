CLASS zcl_32_constructn_contract_ger DEFINITION
  PUBLIC
*  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES zif_09_contract_logali_ger .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_32_constructn_contract_ger IMPLEMENTATION.


  METHOD zif_09_contract_logali_ger~create_contract.

    me->zif_09_contract_logali_ger~contract_type = iv_contract_type.
  ENDMETHOD.
ENDCLASS.
