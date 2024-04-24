DELIMITER //

CREATE PROCEDURE calendar(startDate DATE, endDate DATE)
BEGIN
    DECLARE currentDate DATE;
    
    SET currentDate = startDate;
    
    WHILE currentDate <= endDate DO
        INSERT INTO Tiempo (fecha, mes, trimestre, anio, dia_semana, festivo)
        VALUES (
            currentDate,
            MONTH(currentDate),
            QUARTER(currentDate),
            YEAR(currentDate),
            DAYOFWEEK(currentDate),
            /* You can set the festivo column based on your holiday logic */
            /* For simplicity, let's assume all weekends (Saturday and Sunday) are holidays */
            DAYOFWEEK(currentDate) IN (1, 7) /* Sunday = 1, Saturday = 7 */
        );
        
        SET currentDate = DATE_ADD(currentDate, INTERVAL 1 DAY);
    END WHILE;
END //

DELIMITER ;


