--1
SELECT 
Nome,
Ano
FROM Filmes

--2
SELECT 
Nome,
Ano,
Duracao
FROM Filmes
ORDER BY ANO

--3
SELECT 
Nome,
Ano,
Duracao
FROM Filmes
WHERE Nome = 'De Volta para o Futuro'
ORDER BY ANO

--4
SELECT 
Nome,
Ano,
Duracao
FROM Filmes
WHERE Ano = 1997

--5
SELECT 
Nome,
Ano,
Duracao
FROM Filmes
WHERE Ano > 2000

--6
SELECT 
Nome,
Ano,
Duracao
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao

--7
SELECT 
Ano,
COUNT(*) AS Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY SUM(Duracao) DESC;

--8
Select 
Id,
PrimeiroNome, 
UltimoNome, 
Genero 
FROM atores
WHERE Genero = 'M'

--9
Select 
Id,
PrimeiroNome, 
UltimoNome, 
Genero 
FROM atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

--10
SELECT 
Filmes.nome AS Nome,
Generos.genero AS Genero
FROM Filmes
JOIN 
filmesGenero ON Filmes.Id = filmesGenero.IdFilme
JOIN 
Generos ON filmesGenero.idGenero = Generos.id;

--11
SELECT 
Filmes.nome AS Nome,
Generos.genero AS Genero
FROM Filmes
JOIN 
filmesGenero ON Filmes.Id = filmesGenero.IdFilme
JOIN 
Generos ON filmesGenero.idGenero = Generos.id
WHERE Generos.genero = 'Mistério'

--12
SELECT 
Filmes.nome AS Nome,
atores.PrimeiroNome,
atores.UltimoNome,
elencoFilme.papel AS Papel
FROM Filmes
JOIN 
elencoFilme ON Filmes.Id = elencoFilme.IdFilme
JOIN 
Atores ON Atores.Id = elencoFilme.idAtor