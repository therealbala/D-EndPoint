# views.py
from wsgi import * 
import json 


@app.route('/')  
def index(): 
    return render_template('index.html',site=site) 

@app.route('/identify', methods=['GET', 'POST'])    
def identify():  
    if request.method == 'POST': 
      content_type = request.headers.get('Content-Type')
      if (content_type == 'application/json'):
        jsonf = request.json 

        ## somedata 
        email = jsonf['email']  
        phoneNumber = jsonf['phoneNumber']   
 

        cur = mysql.cursor() ### start mysql 

        query =f"SELECT * FROM customer WHERE id IN(select id from customer group by id having email='{email}' or phonenumber='{phoneNumber}' )  order by id"  
        cur.execute(query) 
        data = cur.fetchall() 
         

        if len(data)>=1:   
            query =f"SELECT * FROM customer WHERE email='{email}' and phonenumber='{phoneNumber}' "  
            cur.execute(query)
            dataf = cur.fetchall() 

            if len(dataf)==0: 
               cur.execute(f'INSERT INTO customer(email,phonenumber,linkPrecendence) values("{email}","{phoneNumber}","0") ')
               mysql.commit()  


           ####### QUERY UPDATE  
            query =f"SELECT id FROM customer WHERE id in(select id from customer group by id having linkedid is null and (email='{email}' or phonenumber='{phoneNumber}' )) order by id "  
            #print(query)  

            cur.execute(query) 
            datap = cur.fetchall()  
            if len(datap)>=1:  
                primary_id = datap[0][0]   
            else: 
                query =f"SELECT linkedid FROM customer WHERE id in(select id from customer group by id having linkedid is not null and (email='{email}' or phonenumber='{phoneNumber}') order by id)"  
                #print(query)
                cur.execute(query) 
                datap = cur.fetchall() 
                primary_id = datap[0][0]
            
            print(primary_id ,primary_id ,primary_id ,primary_id  ) 
            cur.execute(f"UPDATE customer set linkedid='{primary_id}' WHERE id in(select id from customer group by id having email='{email}' or phonenumber='{phoneNumber}') and id!={primary_id} ")
            mysql.commit()  

            
            
        elif len(data)==0: 
            cur.execute(f'INSERT INTO customer(email,phonenumber,linkPrecendence) values("{email}","{phoneNumber}","1") ')
            mysql.commit() 

            ###### fetch the output #####   
            query =f"SELECT * FROM customer WHERE email='{email}' or phonenumber='{phoneNumber}' "  
            cur.execute(query) 
            data = cur.fetchall()  
        
        cur.close()  

            

        ret = {"msg":"method allowed",
              'email':email,'phoneNumber':phoneNumber,'dd':data} 

      else:
        rew = {'msg':'json body only allowed'} 
 
        
    elif request.method == 'GET':
        ret = {"msg":"get method not allowed", "contact":{  }} 


    ### return Data as json 
    json_ret = json.dumps(ret, sort_keys=True, default=str) 
    resp = Response(response=json_ret,
                    #status=200,
                    mimetype="application/json")   
    return resp 