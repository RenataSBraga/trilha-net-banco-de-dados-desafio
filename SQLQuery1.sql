-- 1 - Buscar o nome e ano dos filmes.
SELECT 
     Nome,
     ano 
FROM Filmes
 
 -- 2 Buscar o nome e ano dos filmes,ordenados por ordem crescente pelo ano.
 
 SELECT
    Nome,
    Ano,
    Duracao
 FROM Filmes
 ORDER BY Ano


  -- 3 - Buscar pelo filme de volta para o futuro,trazendo o nome, ano e a duração.
  
  SELECT
       Nome,
       Ano,
       Duracao
  FROM Filmes 
  WHERE Nome = 'De Volta para o Futuro' 
 
 -- 4- Buscar os filmes lançados em 1997.
 
 SELECT
     Nome,
     Ano,
     Duracao
 FROM filmes
 WHERE Ano=1997
 
 -- 5 - Buscar os filmes lançados após o ano 2000.

 SELECT 
      Nome,
      Ano,
      Duracao
 FROM Filmes 
 WHERE ano > 2000

 -- 6 - Buscar os filmes com a duração maior que 100 e menor que 150,ordenando pela duração em ordem crescente.

 SELECT 
     Nome,
     Ano,
     Duracao
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao 

--7 - Buscar a quantidade de filmes lançadas no ano,agrupando por ano,ordenando pela duração em ordem decrescente.

SELECT Ano,COUNT(*) AS Quantidade
    
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC;

-- 8 - Buscar os atores do gênero masculino,retornando o PrimeiroNome,UltimoNome.

SELECT*
FROM Atores
WHERE Genero = 'M'

--9 - Buscar os Atores do gênero feminino,retornando o PrimeiroNome,UltimoNome,e ordenando pelo PrimeiroNome.

SELECT * FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

-- 10 Buscar o nome do filme e o gênero.

SELECT 
   f.Nome,
   g.Genero

FROM FilmesGenero fg

INNER JOIN Filmes f ON fg.IdFilme = f.id
INNER JOIN  Generos g ON fg.IdGenero = g.id;


-- 11 - Buscar o nome do filme e o gênero do tipo "Mistério".

SELECT 
   f.Nome,
   g.Genero

FROM FilmesGenero fg

INNER JOIN Filmes f ON fg.IdFilme = f.id
INNER JOIN  Generos g ON fg.IdGenero = g.id

WHERE 
    g.Genero = 'Mistério'


-- 12 - Buscar o nome do filme e os atores,trazendo o PrimeiroNome,UltimoNome e seu papel.
SELECT
    f.Nome,
    CONCAT(a.PrimeiroNome,' ',a.UltimoNome) AS NomeCompleto,
    ef.Papel

FROM ElencoFilme ef

INNER JOIN Filmes f ON ef.IdFilme = f.Id
INNER JOIN Atores a ON ef.IdAtor = a.ID