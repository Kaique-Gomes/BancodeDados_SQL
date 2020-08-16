CREATE DATABASE TESTE
USE TESTE

CREATE
TABLE DBO.TESTE
(

COD INT
)

/*TRIGGER COM MENSAGEM*/
CREATE
TRIGGER T_INCLUI_1 ON TESTE
FOR
INSERT   
AS
Print ('Inser��o Ocorrida com Sucesso na Tabela TESTE.') 
go 

INSERT INTO TESTE VALUES (1)

select * from teste


CREATE
TRIGGER T_INCLUI_2 ON TESTE
FOR
INSERT   
AS
/*------------------------O disparo ser� acionado ao inserir algo na tabela teste.*/
SELECT
* FROM INSERTED
GO

INSERT INTO TESTE VALUES (2)


SELECT * FROM TESTE WHERE COD = 2

DISABLE trigger T_inclui_2 on teste  

ENABLE trigger T_INLUI on teste 

DROP trigger T_Inclui_1
DROP trigger T_Inclui_2

/*DELETE*/
CREATE
TRIGGER T_APAGA ON TESTE
FOR
DELETE
AS
SELECT
* FROM DELETED
GO

DELETE TESTE WHERE COD=12
SELECT * FROM TESTE

/*UPDATE*/
CREATE
TRIGGER T_ALTERA ON TESTE
FOR
UPDATE
AS
SELECT
* FROM DELETED
SELECT
* FROM INSERTED
GO

UPDATE TESTE
SET COD=12
SELECT * FROM TESTE

/*ROLLBACK*/

CREATE
TRIGGER T_CANCELA ON TESTE
FOR
INSERT , UPDATE , DELETE
AS

PRINT 'CANCELANDO A��O - TEMOS UMA TRIGGER PARA CANCELAR UPDATES E DELETE�S.'
 

ROLLBACK
GO

DROP TRIGGER t_CANCELA