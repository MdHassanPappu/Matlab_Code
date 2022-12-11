#!/usr/bin/env python
# coding: utf-8

# # Pandas Libary

# In[1]:


import pandas as pd


# In[6]:


table=pd.DataFrame({"HSC":["23","24"],"SSC":["25","26"]},index=["session","sesson"])


# In[7]:


table


# In[21]:


type(table.values)
table.values


# In[23]:


type(table.index)
table.index


# In[18]:


cg=pd.Series([3,3.5,4],index=["Average","Above average","1st "],name="resutl")


# In[19]:


cg


# ###  dictionary to pandas series

# In[26]:


dict={"name":"Md Jahid Hassan","age":23,"dist":"Comilla"}
type(dict)


# In[40]:


bio=pd.Series(dict,name="Personal Data")


# In[42]:


bio.index


# In[45]:


bio[0:2]   # this kinds of slicing only applicable in pandas. not in dictionary


# In[46]:


bio["name":"age"]    # another type slicing . its called explicit 


# # # DataFrame 

# In[84]:


marks={1:80,2:75,3:70}
mrks=pd.Series(marks)
print(mrks)


# In[85]:


grade={1:4,2:3.75,3:3.5}
grds=pd.Series(marks)
print(grds)


# In[174]:


id=pd.DataFrame({"Marks":marks,"Grade":grade}) # if you add two or more dict first make a list of dictionary [{}]

""" If we use different key values in distinct  dictionary  and
make a dataframe then, it will be added in horizontaly and 
filled with nan values.  To avoid this
make same keys values in dictionaries"""


# In[ ]:





# In[342]:


data = {
  "calories": [420, 380, 390],
  "duration": [50, 40, 45]
}

#load data into a DataFrame object:
df = pd.DataFrame(data,index=["1st","2nd","3rd"])

print(df) 


# In[347]:


print(df.loc["1st":"3rd"]) 


# In[350]:


print(df.iloc[0:3]) 


# In[123]:


id


# In[125]:


id["comments"]=["Best","better","good"]


# In[127]:


id


# In[147]:


id.index


# In[148]:


id.values


# In[151]:


id.columns


# In[167]:


id_1=id[id["Marks"]<=75 ]


# In[173]:


id_1[id_1["Grade"]==3.75]


# In[129]:


id_2=id.T


# In[130]:


id_2


# In[144]:


id_2[1]


# In[146]:


id_2[1][1]  # first indices express the name of coloum. and 2nd one is index of this series


# In[ ]:





# In[213]:


grade={1:4,2:3.75,3:3.5}
marks={4:80,2:75,3:70}
gr=pd.DataFrame({"Gr":grade,"Mr":marks})


# In[214]:


gr


# In[215]:


gr.fillna(0)


# In[216]:


gr


# In[ ]:





# In[224]:


a=gr.dropna()  # its drop all the rows which contains missing values. 


# In[225]:


a


# In[226]:


gr


# In[230]:


marks={"A":80,"B":75,"C":70,"D":85}
mrks=pd.Series(marks,name="Marks")
print(mrks)


# In[266]:


mrks[0:1]


# In[243]:


mrks.loc["A":"C"]


# In[263]:


mrks.iloc[1:3]


# In[255]:


mrks["A":"C"]


# In[261]:


mrks["D"]


# In[267]:


gr


# In[268]:


id


# In[269]:


id_1


# In[271]:


id_1


# In[335]:


id_1.iloc[0:2]


# In[333]:


id_1.iloc[0]


# In[289]:


id_1["Grade"]


# In[305]:


id_1["Grade"][0:2]


# In[320]:


id_1["Grade"].loc[2]  # labels/index  values 


# In[313]:


id_1["Grade"].iloc[0:2]  # index number 


# # CSV File

# In[351]:


file=pd.read_csv("data.csv")


# In[385]:


file.head()
file.tail()


# In[454]:


pd.options.display.max_rows=100
file.loc[7,"Duration"]=450    # importance indexing , for replacing any value.
file.drop(7,inplace=True)   # remove any row by index value
file.head(15)


# In[463]:


file.duplicated()
file.drop_duplicates(inplace=True)


# In[439]:


# print(file)


# In[440]:


# file.info()


# In[441]:


# file.describe()


# In[446]:


file.head(10)


# In[404]:


file["Calories"].fillna(file["Calories"].mean(),inplace=True)


# In[405]:


file["Calories"].mean()


# In[410]:


file=pd.read_csv("data.csv")


# In[443]:


# file.info()


# In[444]:


# file.head(20)


# In[414]:


file["Calories"].fillna(file["Calories"].mean(),inplace=True)


# In[445]:


# file.head(20)


# In[ ]:




