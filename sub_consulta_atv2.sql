--Então, buscamos nome e telefone da tabela de clientes, onde o ID é igual ao ID retornado pela consulta 
--que procura o ID da pessoa cliente na tabela de pedidos realizados na mencionada data.

SELECT nome, telefone 
FROM clientes 
WHERE id = (SELECT idcliente FROM pedidos WHERE datahorapedido = '2023-01-02 08:15:00')

SELECT idcliente 
FROM pedidos 
WHERE datahorapedido = '2023-01-02 08:15:00'

