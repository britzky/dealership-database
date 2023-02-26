CREATE TABLE salesperson(
    salesperson_id SERIAL PRIMARY KEY,
    first_name VARCHAR (50),
    last_name VARCHAR (50),
    phone_num VARCHAR (15)
);

CREATE TABLE customer(
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100)
);

CREATE TABLE mechanic(
    mechanic_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    phone_num VARCHAR(15)
);

CREATE TABLE cars(
    car_id SERIAL PRIMARY KEY,
    make VARCHAR(50),
    model VARCHAR(50),
    year INTEGER,
    salesperson_id INTEGER,
    FOREIGN KEY (salesperson_id) REFERENCES salesperson(salesperson_id),
    customer_id INTEGER,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);

CREATE TABLE service(
    service_id SERIAL PRIMARY KEY,
    service_type VARCHAR(50),
    service_mins INTEGER,
    customer_id INTEGER,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    car_id INTEGER,
    FOREIGN KEY (car_id) REFERENCES cars(car_id),
    mechanic_id INTEGER,
    FOREIGN KEY (mechanic_id) REFERENCES mechanic(mechanic_id)
);

CREATE TABLE mechanic_ticket(
    service_id INTEGER,
    FOREIGN KEY (service_id) REFERENCES service(service_id),
    mechanic_id INTEGER,
    FOREIGN KEY (mechanic_id) REFERENCES mechanic(mechanic_id)
);

CREATE TABLE invoice(
    invoice_id SERIAL PRIMARY KEY,
    total_cost MONEY,
    car_id INTEGER,
    FOREIGN KEY (car_id) REFERENCES cars(car_id),
    salesperson_id INTEGER,
    FOREIGN KEY (salesperson_id) REFERENCES salesperson(salesperson_id),
    customer_id INTEGER,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    service_id INTEGER,
    FOREIGN KEY (service_id) REFERENCES service(service_id)
);

