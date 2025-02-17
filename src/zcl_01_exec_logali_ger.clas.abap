CLASS zcl_01_exec_logali_ger DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.

  PROTECTED SECTION.

  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_01_exec_logali_ger IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.


*forma 1 crear la instancia
*declaracion
*  data lo_contract type ref to zcl_02_contract_logali_ger.
*referencia apunta a la instancia de esa clase
*  CREATE OBJECT lo_contract.

*forma 2 crear la instancia. con autoreferencia
*  lo_contract = new #(  ).

*forma 3 crear la instancia
    DATA(lo_contract) =  NEW zcl_02_contract_logali_ger(  ).

    DATA lv_process TYPE string.

    IF lo_contract IS BOUND .

      lo_contract->set_client(
        EXPORTING
          iv_client   = 'Logali'
          iv_location = space
        IMPORTING
          ev_status   = DATA(lv_status)
        CHANGING
          cv_process  = lv_process
      ).

      lo_contract->get_client(
        IMPORTING
          ev_client = DATA(lv_client)
      ).


      lo_contract->region = 'EU'.

*    Tambien es posible asi con CALL METHOD

*    call METHOD lo_contract->set_client
*      EXPORTING
*        iv_client   =
*        iv_location =
**      IMPORTING
**        ev_status   =
*      CHANGING
*        cv_process  =
*      .

    ENDIF.

    out->write( |{ lv_client }-{ lv_status }-{ lv_process }-{ lo_contract->region }| ).
  ENDMETHOD.

ENDCLASS.
