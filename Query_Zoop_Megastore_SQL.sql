SELECT 
    produto, 
    SUM(faturamento) AS total_faturado
FROM vendas
GROUP BY produto
ORDER BY total_faturado DESC
LIMIT 5;

SELECT 
    c.nome_cliente, 
    SUM(v.faturamento) AS total_gasto
FROM vendas v
JOIN clientes c ON v.id_cliente = c.id_cliente
GROUP BY c.nome_cliente
ORDER BY total_gasto DESC
LIMIT 5;

SELECT 
    c.plano_assinatura, 
    ROUND(AVG(v.faturamento), 2) AS ticket_medio
FROM vendas v
JOIN clientes c ON v.id_cliente = c.id_cliente
GROUP BY c.plano_assinatura;