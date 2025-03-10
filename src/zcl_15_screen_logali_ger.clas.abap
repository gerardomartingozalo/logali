CLASS zcl_15_screen_logali_ger DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES zif_02_eu_unit_logali_ger.

    INTERFACES zif_03_en_unit_logali_ger.

    METHODS constructor IMPORTING iv_en_unit TYPE zfloat_ger.




  PROTECTED SECTION.
  PRIVATE SECTION.

    DATA en_unit TYPE zfloat.

ENDCLASS.



CLASS zcl_15_screen_logali_ger IMPLEMENTATION.

  METHOD zif_02_eu_unit_logali_ger~dimesions_cm.
    rv_unit = me->en_unit * '2.54' .
  ENDMETHOD.

  METHOD zif_03_en_unit_logali_ger~dimesions_inches.

    rv_unit = me->en_unit.

  ENDMETHOD.

  METHOD constructor.

    me->en_unit = iv_en_unit.

  ENDMETHOD.

ENDCLASS.
