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
                   "WHERE CountryCode ='SWE'")
            cursor.execute(sql)
            rows = cursor.fetchall()
            for lang, percentage, offi in rows:
                print(f"{lang} {percentage}% is official?: {offi}")
            print("Number of languages:", len(rows))
except Error as e:
    print(f"Error using mySQL: {e}")