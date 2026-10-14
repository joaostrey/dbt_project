SELECT
    id_cliente,
    TRIM(nome) AS nome,
    TRIM(cidade) AS cidade,
    data_cadastro
FROM {{ source('vendas', 'clientes') }}