CLASS zcl_02_contract_logali_ger DEFINITION
  PUBLIC
  FINAL
  CREATE PRIVATE .

*Opcionales pero siempre en orden primero public, protected y privada

  PUBLIC SECTION. "disponible desde fuera

"solo se puede asignar valores dentro de la clase con READ-ONLY no desde fuera
*y solo se puede aplicar en los atributos de la encapsulacion publica
  class-DATA company type string VALUE 'Logali Group' READ-ONLY.

*los tipos forman parte de los componentes estaticos de la clase
*  se pueden declarar en cualquier seccion pero se recomienda en la publica ya que se puede usar fuera de la clase
    TYPES: BEGIN OF ty_addRess,
             country     TYPE string,
             city        TYPE string,
             postal_Code TYPE string,
             region      TYPE string,
             street      TYPE string,
             number      TYPE string,
           END OF ty_address,
           tty_address TYPE TABLE OF ty_address.

    CONSTANTS cv_currency_usd TYPE string VALUE 'USD'.


    CONSTANTS: BEGIN OF cs_currency,
                 usd TYPE c LENGTH 3 VALUE 'USD',
                 eu  TYPE c LENGTH 3 VALUE 'EU',
               END OF cs_Currency.

    "hay que indicar tipos tabla, no puedes hacer type table of
    METHODS set_address IMPORTING it_address TYPE tty_address.


*  atributo estatico no depende de una instancia. No tiene acceso a la instancia.
    CLASS-DATA currency TYPE c LENGTH 3.

    DATA region TYPE string.

*    metodo de instancia. en la implementacion es igual method tanto estatico como de instancia
    METHODS set_client IMPORTING VALUE(iv_client) TYPE string
                                 iv_location      TYPE string OPTIONAL
                       EXPORTING ev_status        TYPE string "no es posible optional
                       CHANGING  cv_process       TYPE string OPTIONAL.


    METHODS get_client EXPORTING ev_client TYPE string.

*Metodo estatico.
    CLASS-METHODS: set_cntr_type IMPORTING iv_cntr_type TYPE string,
      get_cntr_type EXPORTING ev_cntr_type TYPE string.


*metodo funcional
    METHODS get_client_name IMPORTING iv_client_id          TYPE string
                            RETURNING VALUE(rv_client_name) TYPE string. " el paso por valor es obligatorio con el returning y solo puede existir un parametro de tipo returning
    "no es posible optional


     METHODS set_sales_org IMPORTING iv_sales_org type string.

     METHODS get_sales_org EXPORTING ev_sales_org type string.

     class-methods get_instance EXPORTING er_instance type REF TO zcl_02_contract_logali_ger.

  PROTECTED SECTION. " solo desde esta clase o sus hijas
*  atributo de instancia. Depende de cada instancia cada vez que se instancia. Tiene acceso al estatico.
    DATA creation_date TYPE sydate.

  PRIVATE SECTION. " solo desde esta clase o clase amiga
    DATA client TYPE string.


*   atributo estatico
    CLASS-DATA cntr_type TYPE string.

    data sales_org type string.

ENDCLASS.



CLASS zcl_02_contract_logali_ger IMPLEMENTATION.
  METHOD set_client.

    client = iv_client.
    ev_status = 'OK'.

    IF iv_location IS SUPPLIED.
      cv_process = 'started'.
    ELSE.
      cv_process = 'not started'.
    ENDIF.


  ENDMETHOD.

  METHOD get_client.

    ev_client = client.

  ENDMETHOD.

  METHOD get_cntr_type.
    ev_cntr_type = cntr_type.
  ENDMETHOD.

  METHOD set_cntr_type.
    cntr_type = iv_cntr_type.
  ENDMETHOD.

  METHOD get_client_name.


    CASE iv_client_id.
      WHEN '01'.
        rv_client_name = 'Cliente 01'.
      WHEN '02'.
        rv_client_name = 'Cliente 02'.
      WHEN OTHERS.

    ENDCASE.

  ENDMETHOD.

  METHOD set_address.


  ENDMETHOD.

  METHOD get_sales_org.

*  aunque no es una buen practica apuntar miembro de instancia de una atributo privado
*  con el me-> nos ayuda a apuntar
   ev_sales_org =  me->sales_org.

  ENDMETHOD.

  METHOD set_sales_org.


    me->sales_org = iv_sales_org.

    me->set_address( it_address = VALUE #( ( country = 'ES' )  ) ).

  ENDMETHOD.

  METHOD get_instance.

    er_instance = new zcl_02_contract_logali_ger( ).

  ENDMETHOD.

ENDCLASS.
