from flask import Flask,render_template,request, Response  
import settings as config 
import mysql.connector 

#from sample import Recipes_data as d    

app= Flask(__name__)  
site = config.basic_setting 

### MYSQL CONNECTION 
 
mysql = mysql.connector.connect(
  host="localhost",
  user="dealberg_user",
  password="Dsff43tt@lp",
  database="dealberg_task", 
) 


from views import * 

if __name__ == '__main__': 
   #app.run(debug = True,host='0.0.0.0', port=80)
   app.run(debug = True) 


   
