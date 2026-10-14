SELECT
    c.id_cliente,
    c.nome,
    c.cidade,
    c.data_cadastro,
    COUNT(p.id_pedido) AS quantidade_pedidos,
    COUNT(p.id_pedido) FILTER (
        WHERE p.status = 'Entregue'
    ) AS quantidade_pedidos_entregues
FROM {{ ref('stg_clientes') }} c
LEFT JOIN {{ ref('stg_pedidos') }} p
    ON c.id_cliente = p.id_cliente
GROUP BY
    c.id_cliente,
    c.nome,
    c.cidade,
    c.data_cadastro