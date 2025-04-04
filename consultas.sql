-- Consulta 1: Listagem de pessoas em ordem alfabética
SELECT id, nome, idade
FROM pessoas 
ORDER BY nome;

-- Consulta 2: Listagem de pessoas com idade entre 20 e 30 anos
SELECT id, nome, idade 
FROM pessoas
WHERE idade BETWEEN 20 AND 60;

-- Consulta 3: Listagem de pessoas que não tenham possuem documento do tipo CPF.
SELECT p.id, p.nome, p.idade
FROM pessoas p
WHERE NOT EXISTS (
    SELECT 1 FROM documentos d 
    WHERE d.pessoa_id = p.id AND d.tipo = 'CPF'
);

-- Consulta 4: Listar pessoas com a coluna nome que contenha o sobrenome Soares.
SELECT id, nome, idade
FROM pessoas
WHERE nome LIKE '% Soares';

-- Consulta 5: Buscar tipos de documentos únicos na tabela documentos
SELECT DISTINCT tipo FROM documentos;