INSERT INTO customer(first_name, last_name, phone, email, zip) VALUES
    ('William', 'James', '4729706492', 'wjames@aol.org', 47586),
    ('John', 'Dewey', '8564732654', 'deweyj@hotmail.com', 45769),
    ('Alfred', 'Whitehead', '0895627183', 'thinkers@gmail.com', 27356),
    ('Judith', 'Butler', '5792104768', '2dream@yahoo.com', 07945),
    ('Comel', 'West', '3625475849', 'comel_w@princeton.edu', 16574);

INSERT INTO car(color, year, make, model) VALUES
    ('Silver', 2018, 'Ford', 'Explorer'),
    ('Green', 2020, 'Land Rover', 'Defender'),
    ('Black', 2021, 'Ford', 'Bronco'),
    ('White', 2015, 'Lotus', 'Elite'),
    ('Red', 2012,'Jaguar', 'XJS');

INSERT INTO salesperson(first_name, last_name) VALUES
    ('Martin', 'Heidegger'),
    ('Karl', 'Marx'),
    ('Hannah', 'Arendt'),
    ('Eduard', 'Zeller'),
    ('David', 'Cassel');

INSERT INTO service (car_id, customer_id, service_type, part_replaced, amount) VALUES
    (1, 5, NULL, NULL, 00.00),
    (2, 4, 'New Tyres', 'Tyres', 200.00),
    (3, 3, 'New windshield', 'Windshield', 300.64),
    (4, 2, 'Oil change', 'Oil', 30.00),
    (5, 1, 'Wheel alignment', NULL, 200.00);

INSERT INTO invoice(car_id, salesperson_id, customer_id, amount) VALUES
    (2, 5, 1, 30000.00),
    (3, 4, 2, 45000.00),
    (4, 3, 3, 60000.00),
    (5, 2, 4, 18000.00),
    (1, 1, 5, 22000.00);

INSERT INTO service_mechanic (mechanic_id, service_id) VALUES
    (3, 5),
    (4, 3),
    (1, 2),
    (1, 1),
    (5, 1),
    (2, 4);

INSERT INTO mechanic(first_name, last_name) VALUES
    ('Albert', 'Camus'),
    ('Betrand', 'Russell'),
    ('John', 'Locke'),
    ('Jeremy', 'Bentham'),
    ('Thomas', 'Hobbes');