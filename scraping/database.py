import sqlite3
name="FYCJ"
salary="199990"
conn=sqlite3.connect("word_density.db")
print("Connecting to DB and inserting data..")
#conn.execute('''CREATE TABLE DATA2(NAME TEXT,SALARY FLOAT);''')
conn.commit()
c=conn.cursor()
#c.execute('''INSERT INTO DATA2(NAME,SALARY)VALUES(?,?)''',(name,salary))
x=c.execute('''SELECT SALARY FROM DATA2''')
for i in x:
    print(i)
conn.commit()
print("Data inserted successfully")
conn.close()
