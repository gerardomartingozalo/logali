CLASS zcl_20_honda_crv_logali_ger DEFINITION INHERITING FROM zcl_19_honda_logali_ger
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  PROTECTED SECTION.
*esta obligada a implementar lso metodos que tiene por necima por ser la ultima que hereda que no es abstracta
    METHODS: set_model REDEFINITION,
             max_speed REDEFINITION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_20_honda_crv_logali_ger IMPLEMENTATION.

  METHOD max_speed.

  ENDMETHOD.

  METHOD set_model.

  ENDMETHOD.

ENDCLASS.
