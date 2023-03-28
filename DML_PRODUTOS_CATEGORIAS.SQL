-- apaga todos os dados da tabela 
delete from produtos_categorias;

-- redfine o valor do sequence para o código sempre começar em 1
ALTER SEQUENCE produtos_categorias_id_seq RESTART WITH 1; -- importante que o sequence seja o da tabela correta

-- cria um loop para inserir os dados (onde 100 é o parâmetro de quantas linhas devem ser inseridas)
-- repare que no insert não passamos o ID pois ele é um sequence, gerado automaticamente pelo postgres
do $$
begin
  -- aqui categorias e produtos sao aleatorios
  for i in 1..100 loop
    insert into produtos_categorias (produto_id, categoria_id) values (cast(random() * 99 as integer) + 1, cast(random() * 99 as integer) + 1);
  end loop;
end;$$;

-- apresenta os resultados
select * from produtos_categorias