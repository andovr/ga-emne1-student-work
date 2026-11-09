import mysql.connector
from mysql.connector import Error

try:
    print("Connecting to database...")
    with mysql.connector.connect(
        host="localhost",
        port=3306,
        user="root",
        password="gokstad",
        database="world"
    ) as connection:
        print("Connection successful!")
        with connection.cursor() as cursor:
            sql = ("SELECT Name, Population "
                   "FROM country "
                   "WHERE Region=%s "
                   "AND Population > %s "
                   "ORDER BY Name ASC")
            region = input("Skriv inn en region: ")
            try:
                min_population = int(input("Minimum populasjon: "))
            except ValueError:
                print(f"{min_population} is not a legal population value")
            if min_population < 0:
                print("Population can not be negative.")
            cursor.execute(sql, (region,min_population))
            rows = cursor.fetchall()
            if not rows:
                print("No languages found for the given county code.")
            for name, pop in rows:
                print(f"{name}: {pop}")
            print("Number of countries:", len(rows))
except Error as e:
    print(f"Error using mySQL: {e}")