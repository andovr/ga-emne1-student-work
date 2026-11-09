import mysql.connector
from mysql.connector import Error

try:
    print("Connecting to the database...")
    with mysql.connector.connect(
        host ="localhost",
        port=3306,
        user="root",
        password="gokstad",
        database="world"
    ) as connection:
        print("Connected to MySQL!")
        with connection.cursor() as cursor:
            sql = ("SELECT Name, Population, CountryCode "
                   "FROM city "
                   "WHERE Name = %s")

            country_input = input("Skriv namn på byen du vil sjå info om: ")
            cursor.execute(sql, (country_input,))
            rows = cursor.fetchall()
            if not rows:
                print("City not found.")
            for name, population, county_code in rows:
                print(f"{name} ({county_code}): {population} people")
except Error as e:
    print(f"Error using MySQL: {e}")