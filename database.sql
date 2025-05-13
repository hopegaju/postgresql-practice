CREATE TABLE Customer(
                         customer_id SERIAL PRIMARY KEY,
                         first_name VARCHAR(100),
                         last_name VARCHAR(100),
                         email VARCHAR(150),
                         phone VARCHAR(50)
);