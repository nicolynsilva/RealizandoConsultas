--buscando os mesmos dados em tabelas diferentes
--UNION - NÃO TRAS DADOS DUPLICADOS
--UNION ALL - TODOS OS DADOS (DUPLICADOS SE HOUVER)

SELECT nome,rua,bairro,cidade,estado,cep FROM colaboradores
UNION ALL
SELECT nome,rua,bairro,cidade,estado,cep FROM fornecedores

SELECT * FROM colaboradores where rua = 'Rua das flores - 210'