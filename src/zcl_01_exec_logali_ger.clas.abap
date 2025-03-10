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
*    DATA(lo_contract) =  NEW zcl_02_contract_logali_ger(  ).

*    DATA(lo_contract2) =  NEW zcl_02_contract_logali_ger(  ).


    zcl_02_contract_logali_ger=>get_instance(
      IMPORTING
        er_instance = DATA(lo_contract)
    ).

    zcl_02_contract_logali_ger=>get_instance(
  IMPORTING
    er_instance = DATA(lo_contract2)
).

    DATA ls_address TYPE zcl_02_contract_logali_ger=>ty_address.
    DATA lt_address TYPE zcl_02_contract_logali_ger=>tty_address.

    DATA lv_process TYPE string.

    IF lo_contract IS BOUND .

      lo_contract->set_client(
        EXPORTING
          iv_client   = 'Logali'
*          iv_location = space
        IMPORTING
          ev_status   = DATA(lv_status)
        CHANGING
          cv_process  = lv_process
      ).


*    Tambien es posible asi con CALL METHOD

*    call METHOD lo_contract->set_client
*      EXPORTING
*        iv_client   = 'Logali'
**        iv_location =
**      IMPORTING
**        ev_status   =
**      CHANGING
**        cv_process  =
*      .

      lo_contract->get_client(
        IMPORTING
          ev_client = DATA(lv_client)
      ).


      lo_contract->region = 'EU'.


      lo_contract->get_client_name(
        EXPORTING
          iv_client_id   = '01'
        RECEIVING
          rv_client_name = DATA(lv_client_name1)
      ).

*      es lo mismo que esto, es lo mismo que un exporting, pero nos da la ventaja de declararlo en linea
*    podemos quitar el exporting porque solo hay un parametro y quitamos el receiving si lo asignamos directamente
      DATA(lv_client_name) = lo_contract->get_client_name( iv_client_id = '01' ).

*      se puede incorporar en una logica adicional

      IF lo_contract->get_client_name( iv_client_id = '01' ) IS NOT INITIAL.
        out->write( lo_contract->get_client_name( iv_client_id = '01' ) ).
      ENDIF.

      zcl_02_contract_logali_ger=>set_cntr_type( iv_cntr_type = 'Construction' ).

      zcl_02_contract_logali_ger=>get_cntr_type(
        IMPORTING
          ev_cntr_type = DATA(lv_cntr_type)
      ).



**      fijamos el valor estatico y vemos como las dos instancias lo toman
      zcl_02_contract_logali_ger=>currency = zcl_02_contract_logali_ger=>cs_currency-usd.

*      es posible acceder a un atributo estatico desde una instancia pero no al reves, aunque no son buenas practicas
      out->write( lo_contract->currency ).
      out->write( lo_contract2->currency ).

*solo lectura
*      zcl_02_contract_logali_ger=>company = ''.



      out->write( zcl_02_contract_logali_ger=>company ).




    ENDIF.

*    out->write( |{ lv_client }-{ lv_status }-{ lv_process }-{ lo_contract->region }| ).


    out->write( zcl_03_employee_logali_ger=>log ).

    DATA(lo_employee1) = NEW zcl_03_employee_logali_Ger( iv_employee_id = '01' ).

    out->write( zcl_03_employee_logali_ger=>log ).

*    out->write( lo_employee1->get_employee_id( ) ).

    DATA(lo_employee2) = NEW zcl_03_employee_logali_Ger( iv_employee_id = '02' ).

*    out->write( lo_employee2->get_employee_id( ) ).


*    out->write( zcl_03_employee_logali_ger=>company ).


    out->write( zcl_03_employee_logali_ger=>log ).



*********************************************
    DATA(lo_company) = NEW zcl_04_company_logali_ger( iv_quotation = 'Q1' ).
    DATA(lo_plant) = NEW zcl_05_plant_logali_ger( iv_quotation = 'Q1' iv_product = 'P2' ).
    DATA(lo_storage) = NEW zcl_06_storage_logali_ger( iv_quotation = 'Q1' iv_product = 'P3' ).


    lo_company->set_company_code( '1234' ).
    lo_company->set_currency( 'USD' ).

    lo_company->get_company_code(
      IMPORTING
        ev_company_code = DATA(lv_company_code)
    ).

    lo_company->get_currency(
      IMPORTING
        ev_currency = DATA(lv_currency)
    ).


    out->write( |Company--{ lv_company_code }-{ lv_currency }| ).


    lo_plant->set_company_code( '5678' ).
    lo_plant->set_currency( 'EUR' ).

    lo_plant->get_company_code(
      IMPORTING
        ev_company_code = lv_company_code
    ).

    lo_plant->get_currency(
      IMPORTING
        ev_currency = lv_currency
    ).


    out->write( |Plant--{ lv_company_code }-{ lv_currency }| ).


    lo_storage->set_company_code( '0123' ).
    lo_storage->set_currency( 'AED' ).

    lo_storage->get_company_code(
     IMPORTING
       ev_company_code = lv_company_code
   ).

    lo_storage->get_currency(
     IMPORTING
       ev_currency = lv_currency
   ).


    out->write( |Storage--{ lv_company_code }-{ lv_currency }| ).


    DATA(lo_animal) = NEW zcl_07_animal_logali_ger(  ).

    DATA(lo_lion) = NEW zcl_08_lion_logali_ger(  ).

    out->write( lo_animal->walk(  ) ).
    out->write( lo_lion->walk(  ) ).

*    NARROWING CASTING O UP CASTING
*una referencia de la clase superior apuntamos a una referencia de la clase inferior
    lo_animal = lo_lion.
*
    out->write( 'NARROWING CASTING O UP CASTING' ).
*    disponemos del metodo de la clase hija
    out->write( lo_animal->walk(  ) ).
    out->write( lo_lion->walk(  ) ).

    TRY.
**    WIDEWING CASTING O DOWN CASTING
        lo_lion ?= lo_animal.
      CATCH cx_sy_move_cast_error.
        out->write( 'Casting Error' ).
        RETURN.
    ENDTRY.



    out->write( 'WIDEWING CASTING O DOWN CASTING' ).
*    disponemos del metodo de la clase hija
    out->write( lo_animal->walk(  ) ).
    out->write( lo_lion->walk(  ) ).



    DATA(lo_travel_agency) = NEW zcl_14_travel_agency_logal_ger(  ).

    lo_travel_agency->zif_01_agency_logali_ger~set_name( 'Gate2fly' ).


    out->write( lo_travel_agency->zif_01_agency_logali_ger~get_name( ) ).


    zcl_14_travel_agency_logal_ger=>zif_01_agency_logali_ger~set_address( iv_address = 'Madrid' ).

**********************************************************************

    DATA(lo_screen) = NEW zcl_15_screen_logali_ger( iv_en_unit = 22 ).

    out->write( lo_screen->zif_02_eu_unit_logali_ger~dimesions_cm( ) ).
    out->write( lo_screen->zif_03_en_unit_logali_ger~dimesions_inches( ) ).


************************************************

    DATA(lo_deparment) = NEW zcl_16_save_deparment_loga_ger(  ).

    lo_deparment->zif_04_document_logali_ger~set_sales_doc( iv_sales_doc = '123D' ).
    lo_deparment->zif_05_sales_order_logali_ger~create_order( iv_order_id = '123O' ).

    DATA(lo_bp) = NEW zcl_17_bp_logali_ger(  ).
    lo_bp->set_company_type( ).
*    es la misma lamada pero con el alias
    lo_bp->zif_07_company_logali_ger~set_company_type( ).


**********************************************

    DATA gt_airplane TYPE STANDARD TABLE OF REF TO zcl_21_airplane_logali_ger.


    DATA go_airplane TYPE REF TO zcl_21_airplane_logali_ger.

*    DATA go_cargoplane TYPE REF TO zcl_22_cargoplane_logali_ger.
*   go_cargoplane = NEW #(  ).


    DATA(go_cargoplane) = NEW zcl_22_cargoplane_logali_ger(  ).

    DATA go_passenger TYPE REF TO zcl_23_passengplane_logali_ger.
    CREATE OBJECT go_passenger.


    APPEND go_cargoplane TO gt_airplane.

    APPEND go_passenger TO gt_airplane.

    LOOP AT gt_airplane INTO go_airplane.
      out->write( go_airplane->airplane_type(  ) ).

    ENDLOOP.

*********************************************

    DATA gt_co_company TYPE STANDARD TABLE OF REF TO zif_08_co_company_logali_ger.
    DATA go_co_company TYPE REF TO zif_08_co_company_logali_ger.
    DATA go_eu_company TYPE REF TO zcl_24_company_eu_logali_ger.
    DATA go_usa_company TYPE REF TO zcl_25_company_usa_logali_ger.
    DATA go_plant TYPE REF TO zcl_26_plant_logali_ger.

    go_eu_company  = NEW #(  ).
    APPEND go_eu_company TO gt_co_company.
    go_usa_company  = NEW #(  ).
    APPEND go_usa_company TO gt_co_company.

    go_plant = NEW #(  ).

*no se puede instanciar go_co_company ya que es una referencia de una interfaz
*pero en cambio podemos llamar al metodo a traves de la referencia de la interfaz
    LOOP AT gt_co_company INTO go_co_company.
      out->write( go_co_company->define_company( ) ).

      out->write( go_plant->assign_company( ir_co_company = go_co_company ) ).




    ENDLOOP.


******************************************************


    DATA(lo_credit_card) = NEW zcl_27_creditcard_logali_ger(  ).
    DATA(lo_client) = NEW zcl_28_client_logali_ger(  ).



    lo_credit_card->set_card_num( iv_credit_card_num = '5489 2222 3333 1749' ).

    lo_client->set_credit_card( ir_credit_card = lo_credit_card ).

    out->write( lo_client->get_credit_card( )->get_card_num( ) ).
***************************************************

*composicion
*el objeto total no puede existir sin no existe el parcial

    DATA(lo_keyboard) = NEW zcl_29_keyboard_logali_ger(  ).

    DATA(lo_laptop) = NEW zcl_30_laptop_logali_ger( io_keyboard = lo_keyboard  ).

    lo_keyboard->keyboard_type = 'ES'.

    out->write( lo_laptop->keyboard->keyboard_type ).


**************************************

    DATA: lo_vat_indicator_1 TYPE REF TO zcl_31_vat_ind_logali_ger,
          lo_vat_indicator_2 TYPE REF TO zcl_31_vat_ind_logali_ger,
          lo_vat_indicator_3 TYPE REF TO zcl_31_vat_ind_logali_ger.

*las referencias apuntan a las instancias
    CREATE OBJECT lo_vat_indicator_1.
*    CREATE OBJECT lo_vat_indicator_2.
*    CREATE OBJECT lo_vat_indicator_3.

*la referencia 2 apunta a la instancia 1
*la referencia 3 apunta a la isntancia 1
*las instancias 2 y 3 se quedan sin referencia y se eliminan garbage collector
    lo_vat_indicator_2 = lo_vat_indicator_1.
    lo_vat_indicator_3 = lo_vat_indicator_1.


    lo_vat_indicator_1->vat_indicator = 'A1'.
*    lo_vat_indicator_2->vat_indicator = 'A2'.
*    lo_vat_indicator_3->vat_indicator = 'A3'.

    out->write( lo_vat_indicator_1->vat_indicator ).
    out->write( lo_vat_indicator_2->vat_indicator ).
    out->write( lo_vat_indicator_3->vat_indicator ).

************************************

    DATA go_contrato TYPE REF TO zif_09_contract_logali_ger.


*  estamos instanciando un objeto distinto a la referencia
*es posible porque la clase implementa la interfaz y es del mismo tipo
    go_contrato = NEW zcl_32_constructn_contract_ger(  ).

*tambien se puede declarar asi
    CREATE OBJECT go_contrato TYPE zcl_32_constructn_contract_ger.

    DATA go_constr_contract TYPE REF TO zcl_32_constructn_contract_ger.

    go_constr_contract = NEW zcl_33_record_logali_ger(  ).

***************
    DATA go_object TYPE REF TO object.

    go_object = NEW zcl_34_product_logali_ger(  ).

    DATA(lv_method_name) = 'RETURN_CATEGORY'.

    DATA lv_category TYPE string.

    CALL METHOD go_object->(lv_method_name) RECEIVING rv_category = lv_category.

    out->write( lv_category ).


**************************************************************************

    DATA(go_timer) = NEW zcl_35_timer_logali_ger(  ).
    DATA(go_conexion) = NEW zcl_36_conexion_logali_ger(  ).


    SET HANDLER go_conexion->on_time_out FOR go_timer.

    DO.

      WAIT UP TO 1 SECONDS.

      go_timer->increment_counter( 1 ).

      IF go_conexion->hour IS INITIAL.
        out->write( |Eventnot yet executed: { cl_abap_context_info=>get_system_time(  ) }| ).
      ELSE.
        out->write( |Event was raises: { go_conexion->hour }-{ go_conexion->sender_user } | ).
        EXIT.
      ENDIF.


    ENDDO.


    DATA lv_result TYPE i.
    DATA lv_num1 TYPE i VALUE 10.
    DATA lv_num2 TYPE i.

    TRY.

        lv_result = lv_num1 / lv_num2.

      CATCH cx_sy_zerodivide INTO DATA(lx_root).
        out->write( lx_root->get_text( ) ).


    ENDTRY..





  ENDMETHOD.

ENDCLASS.
