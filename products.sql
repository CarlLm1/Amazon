DROP DATABASE IF EXISTS bamazon_db;
CREATE DATABASE bamazon_db;

USE bamazon_db;

CREATE TABLE products
(
    id INTEGER NOT NULL
    AUTO_INCREMENT,
    product_name VARCHAR
    (50),
    department_name VARCHAR
    (50),
    price DECIMAL
    (10, 2),
    stock_quantity INTEGER
    (10),
    PRIMARY KEY
    (id)
);

    INSERT INTO products
        (product_name, department_name, price, stock_quantity)
    VALUES
        ("nintendo switch", "electronics", 300, 30);
    INSERT INTO products
        (product_name, department_name, price, stock_quantity)
    VALUES
        ("laptop", "electronics", 1530, 15);
    INSERT INTO products
        (product_name, department_name, price, stock_quantity)
    VALUES
        ("hot cheetos", "food", 1.69, 9000);
    INSERT INTO products
        (product_name, department_name, price, stock_quantity)
    VALUES
        ("case of water", "food", 8, 8000);
    INSERT INTO products
        (product_name, department_name, price, stock_quantity)
    VALUES
        ("woody", "toys", 32, 300);
    INSERT INTO products
        (product_name, department_name, price, stock_quantity)
    VALUES
        ("buzz", "toys", 40, 1000);
    INSERT INTO products
        (product_name, department_name, price, stock_quantity)
    VALUES
        ("tuxedo", "clothing", 120, 12);
    INSERT INTO products
        (product_name, department_name, price, stock_quantity)
    VALUES
        ("bowtie", "clothing", 45, 45);
    INSERT INTO products
        (product_name, department_name, price, stock_quantity)
    VALUES
        ("listerine", "personal care", 5, 50000);
    INSERT INTO products
        (product_name, department_name, price, stock_quantity)
    VALUES
        ("loofah", "personal care", 2, 22222222);