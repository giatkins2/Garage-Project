DROP TABLE IF EXISTS customer CASCADE;
CREATE TABLE customer (
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    phone VARCHAR(13),
    email VARCHAR(100),
    zip NUMERIC(5,0)
);

DROP TABLE IF EXISTS car CASCADE;
CREATE TABLE car (
    car_id SERIAL PRIMARY KEY,
    color VARCHAR(50),
    year NUMERIC(4,0),
    make VARCHAR(50),
    model VARCHAR(50)
);

CREATE TABLE salesperson (
    salesperson_id SERIAL PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100)
);

CREATE TABLE service (
    service_id SERIAL PRIMARY KEY,
    customer_id INTEGER,
    service_type VARCHAR(100) NOT NULL,
    part_replaced VARCHAR(100),
    amount DECIMAL(9,2),
    FOREIGN KEY (car_vin) REFERENCES car(car_vin) ON DELETE CASCADE,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id) ON DELETE CASCADE,
);

CREATE TABLE invoice (
    invoice_id SERIAL PRIMARY KEY,
    salesperson_id INTEGER,
    customer_id INTEGER,
    car_id INTEGER,
    amount DECIMAL(9,2),
    FOREIGN KEY (car_id) REFERENCES car(car_id) ON DELETE CASCADE,
    FOREIGN KEY (salesperson_id) REFERENCES salesperson(salesperson_id) ON DELETE CASCADE,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id) ON DELETE CASCADE
);

CREATE TABLE mechanic (
    mechanic_id SERIAL PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100)
);

CREATE TABLE service_mechanic (
    mechanic_id INTEGER,
    service_id INTEGER,
    FOREIGN KEY (mechanic_id) REFERENCES mechanic(mechanic_id) ON DELETE CASCADE,
    FOREIGN KEY (service_id) REFERENCES "service"(service_id) ON DELETE CASCADE
);