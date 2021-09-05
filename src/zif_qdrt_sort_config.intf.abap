"! <p class="shorttext synchronized" lang="en">Sorting configuration</p>
INTERFACE zif_qdrt_sort_config
  PUBLIC .

  TYPES:
    BEGIN OF ty_sort_field,
      column_key     TYPE fieldname,
      sort_direction TYPE string,
    END OF ty_sort_field,

    ty_sort_fields TYPE STANDARD TABLE OF ty_sort_field WITH EMPTY KEY.


  METHODS:
    "! <p class="shorttext synchronized" lang="en">Returns order by clause</p>
    get_order_by_clause
      RETURNING
        VALUE(result) TYPE string_table.
ENDINTERFACE.
