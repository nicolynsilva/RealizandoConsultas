SELECT idcliente FROM pedidos WHERE strftime('%m', datahorapedido) = '01'

--verificar se um valor corresponde a qualquer valor em uma lista específica de valores.
SELECT id, nome FROM clientes WHERE id IN
(SELECT idcliente FROM pedidos WHERE strftime('%m', datahorapedido) = '01')

--HAVING é usado para filtrar dados depois que eles foram agrupados com a cláusula GROUP BY.
SELECT Nome, Preco
FROM produtos
GROUP BY Nome, Preco
HAVING Preco > (
SELECT AVG(Preco) 
FROM produtos);
