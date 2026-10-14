
SELECT
    id_pedido,
    id_cliente,
    data_pedido,
    TRIM(status) AS status
FROM {{ source('vendas', 'pedidos') }}
