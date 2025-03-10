CLASS zcl_23_passengplane_logali_ger DEFINITION INHERITING FROM zcl_21_airplane_logali_ger
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS: airplane_type REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_23_passengplane_logali_ger IMPLEMENTATION.
  METHOD airplane_type.
    rv_plane_type = 'Passenger plane'.
  ENDMETHOD.

ENDCLASS.
