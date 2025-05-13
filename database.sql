
--Books table
CREATE TABLE Books (
                       book_id SERIAL PRIMARY KEY,
                       title VARCHAR(255),
                       author VARCHAR(255),
                       genre VARCHAR(100),
                       price DECIMAL(10, 2),
                       stock_quantity INT
);
--customers table
CREATE TABLE Customers (
                           customer_id SERIAL PRIMARY KEY,
                           first_name VARCHAR(100),
                           last_name VARCHAR(100),
                           email VARCHAR(150),
                           phone VARCHAR(50)
);

-- Orders table
CREATE TABLE Orders (
                        order_id SERIAL PRIMARY KEY,
                        customer_id INT,
                        order_date DATE,
                        total_amount DECIMAL(10, 2)
);

