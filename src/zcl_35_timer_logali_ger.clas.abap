CLASS zcl_35_timer_logali_ger DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.



    EVENTS time_out EXPORTING VALUE(ev_hour)    TYPE zsyst_uzeit
                              VALUE(ev_another) TYPE string OPTIONAL.


    METHODS  constructor.

    METHODS increment_counter IMPORTING iv_counter TYPE i.
    METHODS   check_limit .

    DATA user TYPE string.

  PROTECTED SECTION.

  PRIVATE SECTION.

    DATA counter TYPE i.

ENDCLASS.



CLASS zcl_35_timer_logali_ger IMPLEMENTATION.

  METHOD check_limit.

    IF me->counter GE 5.


      DATA(lv_system_time) = cl_abap_context_info=>get_system_time(  ).

      RAISE EVENT time_out
        EXPORTING
          ev_hour = lv_system_time
        .



    ENDIF.
  ENDMETHOD.


  METHOD increment_counter.

    me->counter = me->counter + iv_counter.

*    me->counter += iv_counter.



    me->check_limit(  ).

  ENDMETHOD.



  METHOD constructor.
  me->user = sy-uname.
  ENDMETHOD.

ENDCLASS.
