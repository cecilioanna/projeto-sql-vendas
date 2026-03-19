-- Consulta com JOIN
SELECT 
    clientes.nome,
    produtos.nome_produto,
    pedidos.quantidade
FROM pedidos
JOIN clientes ON pedidos.id_cliente = clientes.id_cliente
JOIN produtos ON pedidos.id_produto = produtos.id_produto;

-- Faturamento por cliente
SELECT 
    clientes.nome,
    SUM(produtos.preco * pedidos.quantidade) AS total_gasto
FROM pedidos
JOIN clientes ON pedidos.id_cliente = clientes.id_cliente
JOIN produtos ON pedidos.id_produto = produtos.id_produto
GROUP BY clientes.nome;

-- Cliente que mais gastou
SELECT 
    clientes.nome,
    SUM(produtos.preco * pedidos.quantidade) AS total_gasto
FROM pedidos
JOIN clientes ON pedidos.id_cliente = clientes.id_cliente
JOIN produtos ON pedidos.id_produto = produtos.id_produto
GROUP BY clientes.nome
ORDER BY total_gasto DESC
LIMIT 1;
