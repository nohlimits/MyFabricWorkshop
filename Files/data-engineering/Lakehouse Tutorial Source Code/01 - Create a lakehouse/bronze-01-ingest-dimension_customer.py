#!/usr/bin/env python
# coding: utf-8

# ## bronze-01-ingest-dimension_customer
# 
# New notebook

# In[4]:


###########################################################
##################### customer_dimentions.csv #############
###########################################################

# Read from OneLake
df = spark.read.format("csv")\
  .option("delimiter", ",")\
  .option("encoding", "UTF-8")\
  .option("inferSchema", "true")\
  .option("header", "true")\
  .load("Files/landing/wwi/dimension_customer.csv")


# In[3]:


# For debugging purposes
display(df)


# In[5]:


# Write file to temporary table here in LakeHouse
df.write\
    .format("delta")\
    .mode("overwrite")\
    .option("parquet.vorder.enabled ","true")\
    .saveAsTable("wwilakehouse_bronze.dimension_customer2")


# In[7]:


# With Spark SQL, Please run the query onto the lakehouse which is from the same workspace as the current default lakehouse.

df = spark.sql("SELECT * FROM wwilakehouse_bronze.dimension_customer2 LIMIT 1000")
display(df)

