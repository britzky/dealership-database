--checking to make sure all fields are there
SELECT * 
FROM customer;

-- insert values
INSERT INTO customer(
    first_name,
    last_name,
    email
) VALUES (
    'larry',
    'christmas',
    'lxmas@gmail.com'
),
(
    'stone',
    'cold',
    'trattlesnake@gmail.com'
),
(
    'vin',
    'diesel',
    'fffamily@gmail.com'
);

--checking to make sure all fields are there
SELECT * 
FROM salesperson;

-- insert values
INSERT INTO salesperson(
    first_name,
    last_name,
    phone_num
) VALUES (
    'bill',
    'gates',
    '1-800-microsoft'
),
(
    'wolverine',
    'xman',
    '1-800-jeangrey'
);

--checking to make sure all fields are there
SELECT *
FROM mechanic;

-- insert values
INSERT INTO mechanic(
    first_name,
    last_name,
    phone_num
) VALUES (
    'arnold',
    'schwarzenneger',
    '1-800-governer'
),
(
    'danny',
    'devito',
    '1-800-tiny-man'
);

--checking to make sure all fields are there
SELECT *
FROM cars;

-- insert values
INSERT INTO cars(
    make,
    model,
    year,
    salesperson_id,
    customer_id
) VALUES (
    'reliant',
    'robin',
    1975,
    2,
    1
),
(
    'reliant',
    'robin',
    1990,
    1,
    3
);

--add value for car serviced not sold
INSERT INTO cars(
    make,
    model,
    year,
    customer_id
) VALUES (
    'reliant',
    'robin',
    1977,
    2
);

--checking to make sure all fields are there
SELECT *
FROM service;

-- insert values
INSERT INTO service(
    service_type,
    service_mins,
    customer_id,
    car_id,
    mechanic_id
) VALUES (
    'reattach steering wheel',
    180,
    2,
    3,
    1
),
(
    'replace front wheel',
    360,
    3,
    2,
    2
);

--checking to make sure all fields are there
SELECT *
FROM mechanic_ticket;

-- insert values 
INSERT INTO mechanic_ticket(
    service_id,
    mechanic_id
) VALUES (
    1,
    1
),
(
    2,
    2
);

--checking to make sure all fields are there
SELECT * 
FROM invoice;

-- Checking to see how much to charge
SELECT * 
FROM cars
FULL JOIN customer
ON cars.car_id = customer.customer_id; 

SELECT * 
FROM service
FULL JOIN mechanic
ON mechanic.mechanic_id = service.service_id; 

-- add values
INSERT INTO invoice(
    total_cost,
    car_id,
    salesperson_id,
    customer_id,
    service_id
) VALUES (
    300000,
    1,
    2,
    1,
    NULL
),
(
    500000,
    2,
    1,
    3,
    2
),
(
    100000,
    3,
    NULL,
    2,
    1
);





