pip install -r rqmts.txt //to install all the requirements 
app\wsgi.py   //main app file 


// BASE CURL shell curl cmd 

curl  -X POST  -H "Content-type: application/json" -d "{\"email\" : \"mcfly@hillvalley.edu\", \"phoneNumber\" : \"123456\"}" "localhost:5000/identify" 

##email null 
curl  -X POST  -H "Content-type: application/json" -d "{\"email\" : null, \"phoneNumber\" : \"123456\"}" "localhost:5000/identify" 

##phoneNumber null 
curl  -X POST  -H "Content-type: application/json" -d "{\"email\" : \"mcfly@hillvalley.edu\", \"phoneNumber\" : null}" "localhost:5000/identify" 


#######2

curl  -X POST  -H "Content-type: application/json" -d "{\"email\" : \"george@hillvalley.edu\", \"phoneNumber\" : \"919191\"}" "localhost:5000/identify" 

curl  -X POST  -H "Content-type: application/json" -d "{\"email\" : \"biffsucks@hillvalley.edu\", \"phoneNumber\" : \"717171\"}" "localhost:5000/identify" 


####2.1 

curl  -X POST  -H "Content-type: application/json" -d "{\"email\" : \"george@hillvalley.edu\", \"phoneNumber\" : \"717171\"}" "localhost:5000/identify" 




curl  -X POST  -H "Content-type: application/json" -d "{\"email\" : \"mcfly4@hillvalley.edu\", \"phoneNumber\" : \"40089444\"}" "localhost:5000/identify" 


curl  -X POST  -H "Content-type: application/json" -d "{\"email\" : \"mcfly@hillvalley.edu\", \"phoneNumber\" : \"400849\"}" "localhost:5000/identify" 
curl  -X POST  -H "Content-type: application/json" -d "{\"email\" : \"mcfly4@hillvalley.edu\", \"phoneNumber\" : \"433\"}" "localhost:5000/identify" 

 
curl  -X POST  -H "Content-type: application/json" -d "{\"email\" : \"mcfly4@hillvalley.edu\", \"phoneNumber\" : \"717171\"}" "localhost:5000/identify" 








curl  -X POST  -H "Content-type: application/json" -d "{\"email\" : \"mcfly@hrevalley.edu\", \"phoneNumber\" : \"433\"}" "localhost:5000/identify" 

curl  -X POST  -H "Content-type: application/json" -d "{\"email\" : \"mcfly@h43ey.edu\", \"phoneNumber\" : \"444\"}" "localhost:5000/identify" 

curl  -X POST  -H "Content-type: application/json" -d "{\"email\" : \"mcfly@hrevalley.edu\", \"phoneNumber\" : \"433\"}" "localhost:5000/identify" 

curl  -X POST  -H "Content-type: application/json" -d "{\"email\" : \"mcfly@hillvalley.edu\", \"phoneNumber\" : \"717171\"}" "localhost:5000/identify" 







SELECT id FROM customer WHERE id in(select linkedid from customer group by id having linkedid is not null and (email='{email}' or phonenumber='{phoneNumber} 
 







