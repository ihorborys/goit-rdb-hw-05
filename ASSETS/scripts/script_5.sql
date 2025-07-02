DROP FUNCTION IF EXISTS Division;

DELIMITER //

CREATE FUNCTION Division(input_1 FLOAT, input_2 FLOAT)
RETURNS FLOAT
DETERMINISTIC 
NO SQL
BEGIN
    DECLARE result FLOAT;
    SET result = input_1 / input_2;
    RETURN result;
END //

DELIMITER ;

SELECT 
    id,
    order_id,
    product_id,
    quantity,
    Division(quantity, 2) AS quantity_division
FROM
    order_details