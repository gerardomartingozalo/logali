CLASS zcl_36_conexion_logali_ger DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    DATA hour TYPE zsyst_uzeit.
    DATA sender_user TYPE string.

    METHODS on_time_out FOR EVENT time_out OF zcl_35_timer_logali_ger
      IMPORTING ev_hour
                sender .



  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_36_conexion_logali_ger IMPLEMENTATION.
  METHOD on_time_out.
    me->hour = ev_hour.
* call logout method
    me->sender_user = sender->user.

      ENDMETHOD.

ENDCLASS.
