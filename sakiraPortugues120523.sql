SELECT * FROM sakiraportugues.ator;
select * from ator where primeiro_nome = "cuba";

SELECT ator.primeiro_nome,ator.ultimo_nome,count(filme.titulo) as 'Filmes participados' from
ator join filme_ator on filme_ator.ator_id = ator.ator_id
join filme on filme.filme_id = filme_ator.filme_id where ator.ator_id = '118';

select * from pagamento;
select avg(valor) as 'Valores medios de aluguel', min(valor) as 'valor minimo de aluguel' from pagamento;

select * from cliente;
select * from cliente  where  cliente_id = '1';
-- nome dos filme alugado pelo id 1

select filme.titulo, cliente.primeiro_nome, pagamento.valor,funcionario.primeiro_nome from filme 
join inventario on filme.filme_id = inventario.filme_id
join aluguel on aluguel.inventario_id = inventario.inventario_id
join cliente on cliente.cliente_id = aluguel.cliente_id
join pagamento on pagamento.cliente_id = cliente.cliente_id
join funcionario on pagamento.funcionario_id = funcionario.funcionario_id
 where cliente.cliente_id = '1'
 group by filme.titulo;
 
 select funcionario.primeiro_nome from funcionario 
 join loja on loja.gerente_id = funcionario.funcionario_id;