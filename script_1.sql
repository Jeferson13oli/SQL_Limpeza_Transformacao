# Retornar id do pedido e nome do cliente
# inner Join

SELECT P.id_pedido, C.nome_cliente
FROM cap04.tb_pedidos AS P
INNER JOIN cap04.tb_clientes AS C
	ON P.id_cliente = C.id_cliente;

# Segunda forma de fazer o mesmo processo 

SELECT P.id_pedido, C.nome_cliente
FROM cap04.tb_pedidos AS P, cap04.tb_clientes AS C
WHERE P.id_cliente = C.id_cliente;

# Juncao de 3 tabelas 

SELECT P.id_pedido, C.nome_cliente, V.nome_vendedor
FROM ((cap04.tb_pedidos as P
INNER JOIN cap04.tb_clientes AS C ON P.id_cliente = C.id_cliente)
INNER JOIN cap04.tb_vendedor AS V ON P.id_cliente = V.id_vendedor);

# Segunda forma de fazer o mesmo processo 

SELECT P.id_pedido, C.nome_cliente, V.nome_vendedor
FROM cap04.tb_pedidos as P, cap04.tb_clientes AS C, cap04.tb_vendedor AS V
WHERE P.id_cliente = C.id_cliente
	AND P.id_vendedor = V.id_vendedor;
    
# Retornando id do pedido e nome do cliente
# Inner Join

SELECT P.id_pedido, C.nome_cliente
FROM cap04.tb_pedidos AS P
INNER JOIN cap04.tb_clientes AS C
	ON P.id_cliente = C.id_cliente;
    
# Retornando todos os clientes, com ou seu pedido associado

SELECT C.nome_cliente, P.id_pedido
FROM cap04.tb_clientes AS C
LEFT JOIN cap04.tb_pedidos AS P
	ON C.id_cliente = P.id_cliente;

# Se inverter as tabelas

SELECT C.nome_cliente, P.id_pedido
FROM cap04.tb_pedidos AS P
LEFT JOIN cap04.tb_clientes AS C
	ON C.id_cliente = P.id_cliente;

# Então o correto

SELECT C.nome_cliente, P.id_pedido
FROM cap04.tb_pedidos AS P
RIGHT JOIN cap04.tb_clientes AS C
	ON C.id_cliente = P.id_cliente;

# Retornar a data do pedido, o nome do cliente, todos os vendedores, com ou sem pedido associado, e ordenar o resultado pelo nome do cliente

SELECT P.data_pedido, C.nome_cliente, V.nome_vendedor
FROM ((cap04.tb_pedidos as P
JOIN cap04.tb_clientes AS C ON P.id_cliente = C.id_cliente)
RIGHT JOIN cap04.tb_vendedor AS V ON P.id_vendedor = V.id_vendedor)
order by C.nome_cliente;

# querry Tratada

SELECT 
	CASE
		WHEN P.data_pedido IS NULL THEN "Sem Pedido"
		ELSE P.data_pedido
	END AS data_pedido,
	CASE 
		WHEN C.nome_cliente IS NULL THEN "Sem Pedido"
		ELSE C.nome_cliente
	END AS nome_cliente,
	V.nome_vendedortb_pedidos
FROM ((cap04.tb_pedidos as P
JOIN cap04.tb_clientes AS C ON P.id_cliente = C.id_cliente)
RIGHT JOIN cap04.tb_vendedor AS V ON P.id_vendedor = V.id_vendedor)
order by C.nome_cliente;