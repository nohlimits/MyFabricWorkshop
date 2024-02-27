#!/usr/bin/env python
# coding: utf-8

# ## nb_semlink_demo
# 
# New notebook

# # Install and import semantic-link library

# In[1]:


# %pip install semantic-link


# In[2]:


import sempy.fabric as fabric


# # List workspaces
# get an overview of workspaces with assigned Fabric Capacities

# In[3]:


display(spark.createDataFrame(fabric.list_workspaces()).filter("`Is On Dedicated Capacity` = True"))


# # List datasets

# In[4]:


workspace = "Project Trident" #use name or GUID
fabric.list_datasets(workspace)


# # Explore semantic model sm_wwi_retail

# In[5]:


dataset = "sm_wwi_retail"


# In[6]:


fabric.list_tables(dataset) #, include_columns=True


# # Visualize Keys & Relationships

# In[7]:


from sempy.relationships import plot_relationship_metadata

plot_relationship_metadata(fabric.list_relationships(dataset))


# # List measures from semantic model sm_wwi_retail

# In[8]:


fabric.list_measures(dataset)


# In[9]:


fabric.read_table(dataset, "dim_city", 100)


# # Evaluate Measure

# In[10]:


fabric.evaluate_measure(dataset, "Total_Profit")


# In[11]:


fabric.evaluate_measure(
    dataset,
   ["Total_Profit","Total_Profit_Prev_Mon"],
   ["'dim_date'[CalendarMonthNumber]"]
) 


# In[12]:


dax_total_profit_prev_mon = """
EVALUATE SUMMARIZECOLUMNS(
    'dim_date'[CalendarYear],
    'dim_date'[CalendarMonthNumber],
    FILTER('dim_city', 'dim_city'[Country] = "United States"),
    "Total_Profit_MoM", 
    CALCULATE([Total_Profit_MoM])
)
"""
fabric.evaluate_dax(
    dataset,
   dax_total_profit_prev_mon
) 


# In[19]:


# %%dax sm_wwi_retail  
# EVALUATE TOPN(5, fact_sales)


# In[14]:


# %%dax sm_wwi_retail

# EVALUATE SUMMARIZECOLUMNS(
#     'dim_date'[CalendarYear],
#     'dim_date'[CalendarMonthNumber],
#     FILTER('dim_city', 'dim_city'[Country] = "United States"),
#     "Total_Profit_MoM", 
#     CALCULATE([Total_Profit_MoM])
#     )


# # Testing measures with unittest

# In[15]:


import unittest


# In[16]:


class TestMeasures(unittest.TestCase):
    
    def test_total_profit(self):
        expected = spark.sql("SELECT sum(profit) FROM fact_sales").collect()[0][0]
        result = fabric.evaluate_measure("sm_wwi_retail","Total_Profit")["Total_Profit"][0]
        
        msg = f"expected {expected}\n, result {result}"
        self.assertEqual(expected, result, msg)


# In[17]:


unittest.main(argv=[''], verbosity=2, exit=False)


# # Programmatically refresh dataset

# In[18]:


fabric.refresh_dataset(dataset, workspace)


# In[ ]:


get_ipython().run_line_magic('run', '/')

