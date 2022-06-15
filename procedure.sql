CREATE OR REPLACE FUNCTION new_service(
    _car_id INTEGER,
    _service_id INTEGER,
    _customer_id INTEGER,
    _service_type VARCHAR(100),
    _part_replaced VARCHAR(100),
    _amount DECIMAL(9,2)
)
RETURNS void

AS $$
BEGIN
	INSERT INTO service(car_id, service_id, customer_id, service_type, part_replaced, amount)
	VALUES(_car_id, _service_id, _customer_id, _service_type, _part_replaced, _amount);
END;
$$
LANGUAGE plpgsql;

--SELECT new_service(1, 3, 2, 'Replacement wipers', 'Wipers', 20.00)
--SELECT * FROM service WHERE service_id = 3;
--DROP FUNCTION new_service;