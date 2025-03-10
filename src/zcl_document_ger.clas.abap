CLASS zcl_document_ger DEFINITION
  PUBLIC
    FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS set_title IMPORTING iv_title TYPE string.

  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA title TYPE string.

ENDCLASS.



CLASS zcl_document_ger IMPLEMENTATION.
  METHOD set_title.
    me->title = iv_title.
  ENDMETHOD.

ENDCLASS.
