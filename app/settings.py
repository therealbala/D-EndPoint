from datetime import datetime  
import pytz 
timezone = pytz.timezone('Asia/Kolkata') 

class basic_setting:
    site = 'DealBerg' 
    site2 = 'EndPoint'  
    name=site+site2 
    version = 1.0 
    dt = datetime.now(timezone)  
    year = dt.year 
    month = dt.month 
    day = dt.day 
    