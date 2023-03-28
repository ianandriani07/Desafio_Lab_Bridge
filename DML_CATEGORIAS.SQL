-- apaga todos os dados da tabela 
delete from categorias;

-- redfine o valor do sequence para o código sempre começar em 1
ALTER SEQUENCE categorias_id_seq RESTART WITH 1; -- importante que o sequence seja o da tabela correta

-- cria um loop para inserir os dados (onde 100 é o parâmetro de quantas linhas devem ser inseridas)
-- repare que no insert não passamos o ID pois ele é um sequence, gerado automaticamente pelo postgres
do $$
begin
  for i in 1..100 loop
    insert into categorias (nome) values ('Categoria ' || cast(i as varchar(10)));
  end loop;
end;$$;

-- apresenta os resultados
select * from categorias