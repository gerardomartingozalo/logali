CLASS zcl_student_ger DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

types: BEGIN OF ty_address,
       city type string,
       zip type string,
       street type string,
       END OF TY_ADDRESS.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_student_ger IMPLEMENTATION.


ENDCLASS.
