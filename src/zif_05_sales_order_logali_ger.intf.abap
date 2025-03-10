INTERFACE zif_05_sales_order_logali_ger
  PUBLIC .

  INTERFACES zif_04_document_logali_ger.

  methods create_order IMPORTING iv_order_id TYPE string.

ENDINTERFACE.
