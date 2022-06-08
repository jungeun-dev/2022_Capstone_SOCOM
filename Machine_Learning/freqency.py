import pandas as pd
from google.colab import drive
from konlpy.tag import Okt
from collections import Counter

drive.mount('/content/google_drive')

name_List = '/content/google_drive/My Drive/Final_comment'
result_name = pd.read_csv('/content/google_drive/My Drive/Final_comment/20220214.csv',encoding='utf-8',names=['Comments'])
temp_list = []
for k in range(0,len(result_name)):
  temp_list.append(result_name['Comments'].iloc[k])
print(temp_list)

for i in range(0,len(result_name)):
      print((i+1),":",temp_list[i])
  

okt = Okt()
temp_str = ""
for i in range(0,len(temp_list)):
  temp_str = temp_str + str(temp_list[i])

noun = okt.nouns(temp_str)

for i,v in enumerate(noun):
  if len(v)<2:
    noun.pop(i)

count = Counter(noun)

noun_list = count.most_common(50)

for v in noun_list:
  print(v)

v.to_csv("count.csv", index = False)