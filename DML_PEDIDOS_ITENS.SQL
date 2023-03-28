
-- apaga todos os dados da tabela 
delete from pedidos_itens;

-- redfine o valor do sequence para o código sempre começar em 1
ALTER SEQUENCE pedidos_itens_id_seq RESTART WITH 1; -- importante que o sequence seja o da tabela correta

-- cria um loop para inserir os dados (onde 100 é o parâmetro de quantas linhas devem ser inseridas)
-- repare que no insert não passamos o ID pois ele é um sequence, gerado automaticamente pelo postgres
do $$
begin
  -- aqui estou sorteando um produto e atribuindo ele a um pedido. a quantidade também é aleatório
  for i in 1..100 loop
    insert into pedidos_itens (pedido_id, produto_id, quantidade) values (i, (select id from produtos limit 1 offset (random() * 99) + 1), (random() * 10) + 1);
  end loop;
end;$$;


 -- depois que atribuimos o item ao pedido, temos que atualizar o valor total do pedido
  update pedidos set total = 
    (
		select 
		  pedidos_itens.quantidade * produtos.preco
		from
		  pedidos_itens inner join
		  produtos on pedidos_itens.produto_id = produtos.id
		where
		  pedido_id = pedidos.id
	);
	
-- apresenta os resultados
select * from pedidos_itens