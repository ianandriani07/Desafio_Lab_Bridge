1) listar todos os produtos com nome, descrição e preço em ordem alfabética crescente
select nome, descricao, preco from produtos order by nome

2)
select
  categorias.nome,
  count(produto_id)
from
  produtos_categorias inner join
  categorias on categorias.id = produtos_categorias.categoria_id 
group by
  categorias.nome
order by
  categorias.nome
  
3)
select
  pedidos.data,
  pedidos.endereco_entrega,
  pedidos.total
from 
  pedidos
order by
  pedidos.data desc
  

4)
select
  produtos.nome,
  produtos.descricao,
  produtos.preco,
  sum(pedidos_itens.quantidade) as quantidade
from
  pedidos_itens inner join
  produtos on produtos.id = pedidos_itens.produto_id
group by
  produtos.nome,
  produtos.descricao,
  produtos.preco  
order by
  quantidade desc
  
5)
select
  * 
from
  pedidos inner join
  clientes on clientes.id = pedidos.cliente_id
where
  (pedidos.cliente_id = 41) and
  (data between '2022-06-05' and '2023-02-23')
order by
  clientes.nome,
  pedidos.data
  
6)
select
  produtos.nome,
  count(produtos.nome) as conta
from
  produtos
group by
  produtos.nome
order by
  conta desc
  
