SELECT
    id_item,
    id_pedido,
    id_produto,
    quantidade,
    preco_unitario,
    quantidade * preco_unitario AS valor_item
FROM {{ source('vendas', 'itens_pedido') }}