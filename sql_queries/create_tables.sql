--customer table
CREATE TABLE customers(
    customer_id INTEGER PRIMARY KEY,
    name text NOT NULL,
    age INTEGER,
    gender text,
    city text,
    state text,
    signup_date DATE
);
-- Products Table
CREATE TABLE Products (
    product_id INTEGER PRIMARY KEY,
    product_name TEXT NOT NULL,
    category TEXT NOT NULL,
    price REAL NOT NULL,
    stock_quantity INTEGER
);

-- Orders Table
CREATE TABLE Orders (
    order_id INTEGER PRIMARY KEY,
    customer_id INTEGER,
    product_id INTEGER,
    quantity INTEGER NOT NULL,
    order_date DATE,

    FOREIGN KEY (customer_id)
        REFERENCES Customers(customer_id),

    FOREIGN KEY (product_id)
        REFERENCES Products(product_id)
);

-- Payments Table
CREATE TABLE Payments (
    payment_id INTEGER PRIMARY KEY,
    order_id INTEGER,
    payment_method TEXT,
    amount REAL,
    payment_date DATE,

    FOREIGN KEY (order_id)
        REFERENCES Orders(order_id)
);