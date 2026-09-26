import sqlite3
import pandas as pd

conn = sqlite3.connect("database/ecommerce.db")

customers = pd.read_sql_query(
    "SELECT * FROM Customers",
    conn
)

print(customers.head())