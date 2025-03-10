CLASS zcl_singleton_ger DEFINITION
  PUBLIC
  FINAL
  CREATE PRIVATE.

  PUBLIC SECTION.
    CLASS-METHODS:
      class_constructor.

    CLASS-DATA:
      mo_instance TYPE REF TO zcl_singleton_ger READ-ONLY.

    METHODS:
      do_something RETURNING VALUE(rv_result) TYPE string.

  PRIVATE SECTION.
    " Atributos y métodos privados aquí
ENDCLASS.

CLASS zcl_singleton_ger IMPLEMENTATION.
  METHOD class_constructor.
    " Crea la única instancia durante la inicialización de la clase
    CREATE OBJECT mo_instance.
  ENDMETHOD.

  METHOD do_something.
    rv_result = 'Operación realizada por la única instancia de Singleton'.
  ENDMETHOD.
ENDCLASS.
