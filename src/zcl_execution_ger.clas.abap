CLASS zcl_execution_ger DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .



  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun.


  PROTECTED SECTION.



  PRIVATE SECTION.




ENDCLASS.



CLASS zcl_execution_ger IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.


*    data(lo_plant) = new zcl_plant_ger( ).
*
*    lo_plant->set_company( iv_company_code = '2000' ).
*
*    out->write( lo_plant->get_company( ) ).


*    DATA(lo_order_discount) = NEW zcl_order_discount_ger(  ).
*
*    lo_order_discount->add_product( iv_product = 'Laptop Dell' ).


*    DATA(lo_administrator) = NEW zcl_administrador_ger(  ).
*    lo_administrator->zif_employee_ger~set_name( iv_name = 'Lorena' ).
*    CLEAR  lo_administrator->zif_employee_ger~name.
*
*    lo_administrator->zif_employee_ger~set_name( iv_name = 'Alicia' ).
*
*    out->write(  lo_administrator->zif_employee_ger~name ).


*    DATA lo_cl_a TYPE REF TO zcl_a_ger.
*    DATA lo_cl_a_1 TYPE REF TO zcl_a_ger
*    DATA lo_cl_b TYPE REF TO zcl_b_ger.
**    DATA(lo_cl_a) = NEW zcl_a_ger(  ).
**    DATA(lo_cl_b) = NEW zcl_b_ger(  ).
*
*
*     create OBJECT lo_cl_a.
*     create OBJECT lo_cl_a.
*     create object lo_cl_b.
*
*     create object lo_Cl_a->atr_b.
*
*
*
*    lo_Cl_a->atr_b->atr_a = 'E'.

    out->write( zcl_singleton_ger=>mo_instance->do_something(  ) ).
  ENDMETHOD.



ENDCLASS.
