
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
--Populating the tables
INSERT INTO Books (title, author, genre, price, stock_quantity) VALUES
                         ('The Silent Patient', 'Alex Michaelides', 'Thriller', 20.99, 15),
                         ('Atomic Habits', 'James Clear', 'Self-Help', 18.50, 30),
                         ('Dune', 'Frank Herbert', 'Science Fiction', 25.99, 20),
                         ('Becoming', 'Michelle Obama', 'Biography', 22.75, 12),
                         ('Educated', 'Tara Westover', 'Memoir', 21.50, 10);
INSERT INTO Customers (first_name, last_name, email, phone) VALUES
                         ('Hope', 'Smith', 'hope.smith@email.com', '123-456-7890'),
                         ('Alice', 'Brown', 'alice.brown@email.com', '234-567-8901'),
                         ('John', 'Doe', 'john.doe@email.com', '345-678-9012'),
                         ('Emily', 'Johnson', 'emily.johnson@email.com', '456-789-0123'),
                         ('Michael', 'Williams', 'michael.williams@email.com', '567-890-1234');
INSERT INTO Orders (customer_id, order_date, total_amount) VALUES
                         (1, '2025-05-12', 45.99),
                         (2, '2025-05-11', 30.50),
                         (3, '2025-05-10', 60.00),
                         (4, '2025-05-09', 22.75),
                         (5, '2025-05-08', 75.20);
--updated books
UPDATE Books
SET price = price + 5
WHERE title = 'The Silent Patient';

UPDATE Books
SET stock_quantity = 25
WHERE title = 'Atomic Habits';

--delete from customers
DELETE FROM Customers
WHERE email = 'john.doe@example.com';

--Selecting
SELECT * FROM Books
WHERE genre = 'Fiction';

SELECT * FROM Orders
WHERE total_amount > 50;

SELECT * FROM Customers
WHERE last_name LIKE '%son%';



