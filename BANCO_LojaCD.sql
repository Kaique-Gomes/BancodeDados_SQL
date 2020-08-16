CREATE DATABASE LOJACD2;
go

USE LOJACD2;
go

CREATE TABLE CD
(
CODIGO INT NOT NULL,
NOME VARCHAR(50)NOT NULL,
DATACOMPRA DATETIME NOT NULL,
VALORPAGO MONEY NOT NULL,
LOCALCOMPRA VARCHAR(50) NOT NULL,
ARTISTA VARCHAR(50) NOT NULL,
CONSTRAINT PK_CD PRIMARY KEY (CODIGO)
)

CREATE TABLE MUSICA
(
NUMERO INT NOT NULL,
CODIGOCD INT NOT NULL,
NOME VARCHAR(50) NOT NULL,
TEMPO INT NOT NULL,
CONSTRAINT PK_MUSICA PRIMARY KEY CLUSTERED (NUMERO,CODIGOCD),
CONSTRAINT FK_CD FOREIGN KEY (CODIGOCD) REFERENCES CD (CODIGO)
)

INSERT INTO CD VALUES(01, 'RELOAD', '12/12/2012', 25.00, 'SUBMARINO', 'METALLICA' )
INSERT INTO CD VALUES(02, 'JOSE PEDRO CD', '11/11/2011', 35.00, 'AMERICANAS', 'JOSE PEDRO' )

INSERT INTO MUSICA VALUES (01, 01, 'MUSICA 1 METALLICA',500 )
INSERT INTO MUSICA VALUES (02, 01, 'MUSICA 2 METALLICA',250 )
INSERT INTO MUSICA VALUES (03, 01, 'MUSICA 3 METALLICA',600 )
INSERT INTO MUSICA VALUES (04, 01, 'MUSICA 4 METALLICA',650 )
INSERT INTO MUSICA VALUES (05, 01, 'MUSICA 5 METALLICA',840 )
INSERT INTO MUSICA VALUES (06, 01, 'MUSICA 6 METALLICA',650 )
INSERT INTO MUSICA VALUES (01, 02, 'MUSICA 1 JOSE PEDRO',320 )
INSERT INTO MUSICA VALUES (02, 02, 'MUSICA 2 JOSE PEDRO',280 )
INSERT INTO MUSICA VALUES (03, 02, 'MUSICA 3 JOSE PEDRO',900 )
INSERT INTO MUSICA VALUES (04, 02, 'MUSICA 4 JOSE PEDRO',360 )
INSERT INTO MUSICA VALUES (05, 02, 'MUSICA 5 JOSE PEDRO',180 )
INSERT INTO MUSICA VALUES (06, 02, 'MUSICA 6 JOSE PEDRO',240 )


select * from CD

select * from MUSICA

select sum(VALORPAGO) VALOR_TOTAL from CD --1.	Mostrar o total gasto com a compra dos Cds.*

SELECT SUM(TEMPO) TEMPO_TOTAL FROM MUSICA --2.	Mostre o tempo total de m�sicas cadastradas.*

SELECT COUNT(NUMERO) NUMERO_TOTAL FROM MUSICA --3.	Mostre a quantidade de m�sicas cadastradas.*

SELECT AVG(TEMPO) MEDIA_DURACAO FROM MUSICA -- 4.	Mostre a m�dia de dura��o das m�sicas cadastradas.*

SELECT COUNT(CODIGO) QUANTIDADE_DE_CDS FROM CD --5.	Mostre a quantidade de Cds.*

SELECT MAX(VALORPAGO) CD_MAIS_CARO FROM CD --6.	Mostre o cd que custou mais caro.*






