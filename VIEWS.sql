
CREATE VIEW CONSULTA_LIVRO --CRIAR VIS�O
AS
SELECT L.COD_LIVRO,L.TITULO,A.NOME NOME_AUTOR, E.NOME NOME_EDITORA
FROM LIVRO L INNER JOIN AUTOR A ON A.COD_AUTOR=L.COD_AUTOR
			 INNER JOIN EDITORA E ON E.COD_EDITORA=L.COD_EDITORA



ALTER VIEW CONSULTA_LIVRO  --ALTERAR VIS�O
AS
SELECT L.COD_LIVRO,L.TITULO,A.NOME NOME_AUTOR, E.NOME NOME_EDITORA
FROM LIVRO L INNER JOIN AUTOR A ON A.COD_AUTOR=L.COD_AUTOR
			 INNER JOIN EDITORA E ON E.COD_EDITORA=L.COD_EDITORA


SELECT * FROM CONSULTA_LIVRO --CONSULTAR A VIS�O



SELECT * FROM  SYS.OBJECTS
WHERE type_desc='VIEW'


SELECT * FROM SYS.views --EXIBIR AS VIS�ES PELOS METADADOS


SP_HELPTEXT CONSULTA_LIVRO --VISUALIZA O CONTE�DO DA VIS�O

