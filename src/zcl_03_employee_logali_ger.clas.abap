CLASS zcl_03_employee_logali_ger DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

*constructor de instancia
*constructor implicito sin parametros
*constructor no se permite el exporting solo importing
*se ejecuta cada vez que se genera una instancia
*constructor de instancia se puede definir en cualquier section pero siempre igual o mayor que la restriccion de la clase
    METHODS constructor IMPORTING iv_employee_id TYPE string. " OPTIONAL.

*    contructor estatico no admite parametros de ningun tupo ni excepciones
*el constructor estaticos solo se ejecuta una vez en el contexto de la aplicacion
* constructor estatico siempre en la public section
    CLASS-METHODS class_constructor. " OPTIONAL.

    METHODS get_employee_id RETURNING VALUE(rv_employee_id) TYPE string.

    CLASS-DATA company TYPE string.

    CLASS-DATA log TYPE string.

  PROTECTED SECTION.

  PRIVATE SECTION.

    DATA employee_id TYPE string.

ENDCLASS.



CLASS zcl_03_employee_logali_ger IMPLEMENTATION.

  METHOD constructor.
    me->employee_id = iv_employee_id.

    log = |{ log }-Instance contructor { employee_id }|.

  ENDMETHOD.

  METHOD get_employee_id.

    rv_employee_id = me->employee_id.

  ENDMETHOD.

  METHOD class_constructor.

    zcl_03_employee_logali_ger=>company = 'Logali'.

    log = |{ log }-Instance contructor |.

  ENDMETHOD.

ENDCLASS.
