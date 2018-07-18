import urllib.request as r
from bs4 import BeautifulSoup
req=('https://en.wikipedia.org/wiki/Golf')
page=r.urlopen(req)
soup=BeautifulSoup(page,"html.parser")
print(soup.find_all("p"))
