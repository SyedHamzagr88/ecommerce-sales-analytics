import sqlite3
import pandas as pd
import numpy as np 
conn = sqlite3.connect("database/ecommerce.db")
customers= pd.read_sql_query("SELECT * FROM customers",conn)
products = pd.read_sql_query(
    "SELECT * FROM Products",
    conn
)
orders = pd.read_csv("../data/Orders.csv")
payments = pd.read_csv("../data/Payments.csv")
merged = orders.merge(
    products,
    on="product_id"
)

merged["revenue"] = (
    merged["quantity"] *
    merged["price"]
)