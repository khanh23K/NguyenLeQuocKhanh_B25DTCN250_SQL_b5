-- Bai 6: customer, wallet, transaction
CREATE TABLE customer (
user_id INT PRIMARY KEY AUTO_INCREMENT,
user_name VARCHAR(100) NOT NULL,
email VARCHAR(100) NOT NULL UNIQUE

);
CREATE TABLE wallet (
wallet_id INT PRIMARY KEY AUTO_INCREMENT,
customer_id INT NOT NULL,
balance DECIMAL(10, 2) NOT NULL DEFAULT 0 CHECK (balance >= 0),
FOREIGN KEY(customer_id) REFERENCES customer(customer_id)

);
