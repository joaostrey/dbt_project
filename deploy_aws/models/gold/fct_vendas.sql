SELECT
    p.id_pedido,
    p.data_pedido,
    p.status,
    c.id_cliente,
    c.nome AS nome_cliente,
    c.cidade,
    i.id_item,
    pr.id_produto,
    pr.nome_produto,
    pr.categoria,
    i.quantidade,
    i.preco_unitario,
    i.valor_item
FROM {{ ref('stg_pedidos') }} p
INNER JOIN {{ ref('stg_clientes') }} c
    ON p.id_cliente = c.id_cliente
INNER JOIN {{ ref('stg_itens_pedido') }} i
    ON p.id_pedido = i.id_pedido
INNER JOIN {{ ref('stg_produtos') }} pr
    ON i.id_produto = pr.id_produto