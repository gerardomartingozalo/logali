INTERFACE zif_09_contract_logali_ger
  PUBLIC .

  data contract_type type string.

  METHODS create_contract IMPORTING iv_contract_type type string.

ENDINTERFACE.
