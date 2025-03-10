INTERFACE zif_employee_ger
  PUBLIC .


  DATA name TYPE string.
  METHODS set_name IMPORTING iv_name TYPE string.

ENDINTERFACE.
