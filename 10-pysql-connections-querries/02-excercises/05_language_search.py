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
            sql = ("SELECT Language, Percentage, isofficial "
                   "FROM countrylanguage "
                   "WHERE CountryCode =%s")
            country_code = input("Skriv inn en landekode på formen (XXX): ")
            cursor.execute(sql, (country_code,))
            rows = cursor.fetchall()
            if not rows:
                print("No languages found for the given county code.")
            for lang, percentage, offi in rows:
                print(f"{lang} {percentage}% is official?: {offi}")
            print("Number of languages:", len(rows))
except Error as e:
    print(f"Error using mySQL: {e}")