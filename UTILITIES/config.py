import datetime
import os.path
from enum import Enum
from collections import namedtuple

from pytz import timezone

APP_TIMEZONE="Australia/Sydney"


def customOccupancyDecoder(occupancyDict):
    return namedtuple('Object', occupancyDict.keys())(*occupancyDict.values())

hotel_list=[
    {'ACTIVE_HOTEL_ID':688688,
'ACTIVE_HOTEL_NAME':'APX Paramatta',
'ACTIVE_HOTEL_INSTANCE':'instances_1bd92cd3294be265e823dd587d4302fa'},
{'ACTIVE_HOTEL_ID':918492,
'ACTIVE_HOTEL_NAME':'APX Darling Harbour',
'ACTIVE_HOTEL_INSTANCE':'instances_86bf5b55a2f7ede325ae43d954697532'},
{'ACTIVE_HOTEL_ID':2266432,
'ACTIVE_HOTEL_NAME':'APX World Square',
'ACTIVE_HOTEL_INSTANCE':'instances_b02b94837f03087e00fbe9921cb55d61'},
]
# BASE_DIR="/python-scripts/hoteloccupancyprediction"
BASE_DIR="/home/rakesh/Desktop/python-scripts/hoteloccupancyprediction"
LOG_DIR=str(os.path.join(BASE_DIR,"LOGS"))
LOG_FILE=str(os.path.join(LOG_DIR,"process.log"))

MYSQL_HOST='localhost'
MYSQL_PORT=3306
MYSQL_USERNAME='root'
# MYSQL_PASSWORD='sadagopanrameshrighthanded'
MYSQL_PASSWORD=''
MYSQL_DBNAME='ml_db'
class config:
    def __init__(self,hotelId):
        self.ACTIVE_HOTEL_ID = hotelId
        self.ACTIVE_HOTEL_NAME= 'APX Paramatta'
        self.ACTIVE_HOTEL_INSTANCE= 'instances_1bd92cd3294be265e823dd587d4302fa'
        self.FORECASTING_START_DATE = ""
        self.FORECASTING_END_DATE = ""

        self.BOOKING_CSV_FILE_LOCATION = ""
        self.OCCUPANCY_CSV_FILE_LOCATION = ""
        self.MODEL_PATH = ""

        self.set_hotel()
        self.set_others()
    def set_hotel(self):
            for i in hotel_list:
                hotel_id=i['ACTIVE_HOTEL_ID']
                if int(hotel_id) == int(self.ACTIVE_HOTEL_ID):
                    self.ACTIVE_HOTEL_NAME = i['ACTIVE_HOTEL_NAME']
                    self.ACTIVE_HOTEL_INSTANCE = i['ACTIVE_HOTEL_INSTANCE']

    def set_others(self):
            '''set start date and end date for forcasting as string'''
            self.FORECASTING_START_DATE=datetime.datetime.now(timezone(APP_TIMEZONE)).strftime("%Y-%m-%d") # or any date string with the format
            self.FORECASTING_END_DATE=(datetime.datetime.now(timezone(APP_TIMEZONE))+datetime.timedelta(days=30)).strftime("%Y-%m-%d") # or any date string with the format

            self.BOOKING_CSV_FILE_LOCATION=os.path.join(BASE_DIR,'DATASOURCE','booking_data_'+self.ACTIVE_HOTEL_NAME.replace(" ","_")+'.csv')
            self.OCCUPANCY_CSV_FILE_LOCATION=os.path.join(BASE_DIR,'DATASOURCE','occupancy_data_'+self.ACTIVE_HOTEL_NAME.replace(" ","_")+'.csv')
            self.MODEL_PATH=os.path.join(BASE_DIR,'ML_MODELS','model_'+self.ACTIVE_HOTEL_NAME.replace(" ","_")+'.joblib')

NEWBOOK_AUTHENTICATION_API_URL="https://api.newbook.cloud/rest/api_keys"
NEWBOOK_BOOKING_INFO_API_URL="https://api.newbook.cloud/rest/bookings_list"
NEWBOOK_AVAILABLE_PRICE_API_URL="https://api.newbook.cloud/rest/bookings_availability_pricing"
NEWBOOK_OCCUPANCY_RATE_API_URL="https://api.newbook.cloud/rest/reports_occupancy"
NEWBOOK_UPDATE_RATE_API_URL="https://api.newbook.cloud/rest/tariffs_override"
NEWBOOK_USERNAME = "fountainIT"
NEWBOOK_PASSWORD = "0unuLM^REYHH!DgA"

###############################

############### enums ##############

class HTTP_METHOD(Enum):
    POST = 'POST'
    GET='GET'

########################
NEWBOOK_HOTEL_ID_FOR_CATEGORY_EXCLUSION=2266432
NEWBOOK_EXCLUDED_CATEGORY=['Standard 2 bedroom apartment','Executive 2 bedroom apartment','Adjacent 2 bedroom']
NEWBOOK_HOTEL_ROOMS_COUNT_FOR_688688=54
NEWBOOK_HOTEL_ROOMS_COUNT_FOR_918492=35
NEWBOOK_HOTEL_ROOMS_COUNT_FOR_2266432=73
