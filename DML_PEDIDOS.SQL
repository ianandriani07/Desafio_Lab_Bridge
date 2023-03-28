-- apaga todos os dados da tabela 
delete from pedidos;

-- redfine o valor do sequence para o código sempre começar em 1
ALTER SEQUENCE pedidos_id_seq RESTART WITH 1; -- importante que o sequence seja o da tabela correta

-- cria um loop para inserir os dados (onde 100 é o parâmetro de quantas linhas devem ser inseridas)
-- repare que no insert não passamos o ID pois ele é um sequence, gerado automaticamente pelo postgres
do $$
begin
  -- aqui estou definindo uma data aleatória, decrementando aleatoriamente no máximo 365 dias
  for i in 1..100 loop
    insert into pedidos (data, endereco_entrega, total, cliente_id) values (current_date - cast(random() * 365 as integer) + 1, 'Endereço de Entrega '  || cast(i as varchar(100)), 0, cast((random() * 99) + 1 as integer));
  end loop;
end;$$;

-- apresenta os resultados
select * from pedidos