SELECT * FROM clientes

SELECT * from pedidos

--- INNER JOIN: Combina linhas de duas tabelas quando há uma correspondência entre as colunas 
--especificadas. Se não houver correspondência, a linha não aparece no resultado.

SELECT 
c.nome,
p.id,
p.datahorapedido
FROM clientes c
INNER JOIN pedidos p
ON c.id = p.idcliente


-- RIGHT JOIN (ou RIGHT OUTER JOIN): É o oposto do LEFT JOIN. 
--Retorna todas as linhas da tabela da direita e as correspondentes da esquerda. 
--Novamente, se não houver correspondência, os resultados da tabela da esquerda terão valores NULL.


SELECT 
pr.nome,
x.idproduto,
x.idpedido
from 
(SELECT ip.idpedido, ip.idproduto 
 from pedidos p
JOIN itenspedidos ip
ON p.id = ip.idpedido
WHERE strftime('%m', p.DataHoraPedido) = '08') x
RIGHT JOIN produtos pr
ON pr.id = x.idproduto

--LEFT JOIN (ou LEFT OUTER JOIN): Retorna todas as linhas da tabela da esquerda (a primeira mencionada) e
--as linhas correspondentes da tabela da direita.
--Se não houver correspondência, os resultados da tabela da direita terão valores NULL.

SELECT 
c.nome,
x.id
from clientes c 
left join 
(SELECT 
p.id,
p.idcliente
from pedidos p 
WHERE strftime('%m', p.DataHoraPedido) = '08' ) x
ON C.ID = x.idcliente
WHERE x.idcliente ISNULL

--FULL JOIN (ou FULL OUTER JOIN): Combina as linhas de ambas as tabelas. 
--Se não houver correspondência, ainda assim as linhas serão mostradas, 
--com NULL no lado sem correspondência.

SELECT 
c.nome,
p.id
FROM clientes c
full join pedidos p
on c.id = p.idcliente
WHERE p.id ISNULL

