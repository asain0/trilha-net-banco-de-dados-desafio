-- Desafio DIO trilha net banco de dados
-- Consultas propostas pelo desafio:

-- 1 Buscar o nome e ano dos filmes
Select nome, Ano
from Filmes

-- 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
Select nome, Ano
from Filmes
order by Ano

-- 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
Select nome, Ano, Duracao
from Filmes
where nome = 'de volta para o futuro'

-- 4 - Buscar os filmes lançados em 1997
select *
from Filmes
where Ano = 1997

-- 5 -Buscar os filmes lançados APÓS 2000
select *
from Filmes
where Ano > 2000

-- 6 - Buscar os filmes com a duração maior que 100 e menor que 150, ordenando pela duração em ordem crescente
select *
from Filmes
where Duracao between 100 and 150
order by Duracao

-- 7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duração em ordem decrescente
select Ano, COUNT(Ano) Quantidade
from Filmes
group by Ano
order by Quantidade desc

-- 8- Buscar os Atores do gênero masculino, retornando o PrimeiroNome, Ultimo Nome
select PrimeiroNome, UltimoNome
from Atores
where Genero = 'm'

-- 9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo Primeiro nome
select PrimeiroNome, UltimoNome
from Atores
where Genero = 'f'
order by PrimeiroNome

-- 10 Buscar o nome do filme e o gênero
select f.Nome, g.Genero
from Filmes f
inner join FilmesGenero fg on fg.IdFilme = f.Id
inner join Generos g on g.Id = fg.IdGenero

-- 11 - Buscar o nome do filme e o gênero do tipo "Mistério"
select f.Nome, g.Genero
from Filmes f
inner join FilmesGenero fg on fg.IdFilme = f.Id
inner join Generos g on g.Id = fg.IdGenero 
where g.Genero = 'mistério'
-- ou
select f.Nome, g.Genero
from Filmes f
inner join FilmesGenero fg on fg.IdFilme = f.Id
inner join Generos g on g.Id = fg.IdGenero and g.Genero = 'mistério'  
  
-- 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu papel
select f.Nome, a.PrimeiroNome, a.UltimoNome, e.Papel
from Filmes f
inner join ElencoFilme e on e.IdFilme = f.Id
inner join Atores a on a.Id = e.IdAtor
