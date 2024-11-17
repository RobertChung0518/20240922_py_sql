#常數
PI = 3.1415926

#自訂的class
class CustomClass:
    pass

import time
#自訂的function
def get_data():
    time.sleep(2)

import requests
#TPE ubike data
url = 'https://tcgbusfs.blob.core.windows.net/dotapp/youbike/v2/youbike_immediate.json'
reponse = requests.get(url)
type(reponse)
