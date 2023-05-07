# Carga de Dados da Dimensão Tempo

# Limpa a tabela
TRUNCATE DIMENSIONAL.DIM_TEMPO;


# Stored Procedure
DELIMITER //
CREATE PROCEDURE DIMENSIONAL.CARREGA_DIM_TEMPO(IN startdate DATE, IN stopdate DATE)
BEGIN
    DECLARE currentdate DATE;
    SET currentdate = startdate;
    WHILE currentdate <= stopdate DO
        INSERT INTO DIMENSIONAL.DIM_TEMPO VALUES (
           YEAR(currentdate)*10000+MONTH(currentdate)*100 + DAY(currentdate),
           currentdate,
           YEAR(currentdate),
           MONTH(currentdate),
           DAY(currentdate),
           QUARTER(currentdate),
           WEEKOFYEAR(currentdate),
           DATE_FORMAT(currentdate,'%W'),
           DATE_FORMAT(currentdate,'%M'),
           'f',
           CASE DAYOFWEEK(currentdate) WHEN 1 THEN 't' WHEN 7 then 't' ELSE 'f' END);
        SET currentdate = ADDDATE(currentdate,INTERVAL 1 DAY);
    END WHILE;
END
//
DELIMITER ;


# Executa a Stored Procedure
CALL DIMENSIONAL.CARREGA_DIM_TEMPO('2010-01-01','2030-01-01');

OPTIMIZE TABLE DIMENSIONAL.DIM_TEMPO;
