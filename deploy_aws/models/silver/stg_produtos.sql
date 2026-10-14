SELECT
    id_produto,
    TRIM(nome_produto) AS nome_produto,
    TRIM(categoria) AS categoria,
    preco
FROM {{ source('vendas', 'produtos') }}