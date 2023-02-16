import re
import requests
from bs4 import BeautifulSoup
import pandas as pd
j=0
url_list = []
while(j<80000):
  if j<80000:
    URL = 'https://db.aa419.org/fakebankslist.php?start='+str(j)
    page = requests.get(URL)
    soup = BeautifulSoup(page.content, 'html.parser')
    tablerow = soup.find_all('tr', class_='ewTableAltRow')
    table_alt_row = soup.find_all('tr', class_='ewTableAltRow')
    tablerow = tablerow+table_alt_row
    for i in tablerow:
      for link in i.find_all('a', href=True):
        
        if link.string is None:
          pass
        else:
          if "http" in link.string:
            url_list.append(link.string)
    j+=20
    print(j)

df = pd.DataFrame(list(zip(url_list)),
               columns =['URL'])
df["Label"] = "Bad"

df.to_csv("Phishing_data.csv",index=False)
print(df)