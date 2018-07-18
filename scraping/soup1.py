import xlsxwriter
import urllib.request
import sqlite3
from bs4 import BeautifulSoup

#CONNECT TO DATABASE

conn=sqlite3.connect("python_project.db")
#conn.execute('''CREATE TABLE PSYCHO(URL TEXT,LIST_OF_WORDS TEXT,WORD_COUNT FLOAT,DENSITY_OF_WORDS FLOAT);''')

#Initializing the variable
i=0
count_sheet=0

#Acessing file containing URL's
fileopen=open("URL.txt")
URL=fileopen.read().split()
URLlist=list(URL)
print(URLlist)

#Intializing Excel Workbook
workbook=xlsxwriter.Workbook('mysheet.xlsx')

#Iterate through each URL's

for URL1 in URLlist:
      req=urllib.request.Request(URL1)
      page=urllib.request.urlopen(req)
      soup=BeautifulSoup(page,"html.parser")
      print(soup.title.string)
      for script in soup(["script","style"]):
            script.extract()
      text=soup.get_text()
      print(text)
      lines=(line.strip() for line in text.split())
      for line in lines:
            print(line)
      print("\n Success")

#Accessing file containing stop words
      fopen=open("stop_words.txt")
      ignorewords=fopen.read().split()
      ignorewordsset=set(ignorewords)
      fopen.close()

#Intialize dictionary and lists for for frequency, list of words and density
      count={}
      d=[]
      words_list=[]
      tot=len(text)
      
#Including scrapped words in dictionary after removing stop words
      for word in text.lower().split():
         if word not in ignorewordsset:

#Including count of each word scrapped
               if word not in count:
                     count[word]=1
               else:
                     count[word]+=1
                     
#Including density for each words scrapped
      for i in count.keys():
            d.append((count[i]/tot)*100)
            words_list.append((i,(count[i]/tot)*100))
      print(count)
      list_of_words=count.keys()
      word_count=count.values()
      
#Initializing Worksheet
      count_sheet=count_sheet+1
      worksheet = workbook.add_worksheet()
      
#Adding list of words to Worksheet
      worksheet.write('A1',"name")
      worksheet.set_column('A:A',20)
      row=1
      col=0
      worksheet.write_column(row,col,list_of_words)

#Adding word count to the worksheet
      worksheet.write('B1',"Count")
      worksheet.set_column('B:B',20)
      row=1
      col=1
      worksheet.write_column(row,col,word_count)

#Adding density to the worksheet
      worksheet.write('C1',"Density")
      worksheet.set_column('C:C',20)
      row=1
      col=2
      worksheet.write_column(row,col,d)

#Adding chart to Worksheet
      chart=workbook.add_chart({'type':'bar'})
      chart.add_series({'values':'=Sheet%d!$C$1:$C$30'%count_sheet})
      worksheet.insert_chart('G5',chart)

#Invoking Database
      print("Connecting to DB...")
      conn.commit()
      c=conn.cursor()

#Inserting values into the database
      c.executemany('INSERT INTO PSYCHO(LIST_OF_WORDS,DENSITY_OF_WORDS) VALUES(?,?)''',(words_list))

#Extracting the data stored
      db=c.execute('''SELECT * FROM PSYCHO''')
      for data in db:
            print(data)
      conn.commit()
conn.close()
workbook.close()
