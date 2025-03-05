#!/usr/bin/env python3
import logging
import threading
from datetime import datetime

import pandas as pd
from pytz import timezone

from ML_MODELS import arima_model
from UTILITIES import config
from DATASOURCE.occupancy_rate_datasource import get_data_occupancy
from UTILITIES import mysqladapter
from UTILITIES.config import LOG_FILE, APP_TIMEZONE

logging.basicConfig(filename=LOG_FILE, level=logging.DEBUG, format='%(asctime)s - %(message)s')
def download_csv_and_generate_model(hotelId):
   try:
        configObj=config.config(hotelId)
        logging.debug(configObj.OCCUPANCY_CSV_FILE_LOCATION)
        get_data_occupancy(configObj)
        data = pd.read_csv(configObj.OCCUPANCY_CSV_FILE_LOCATION, delimiter='\t', skiprows=1, names=['occupancy_rate', 'date'])
        data.drop_duplicates()
        data['date'] = pd.to_datetime(data['date'])
        data['occupancy_rate'] = pd.to_numeric(data['occupancy_rate'])
        data.set_index('date', inplace=True)
        max_date = data.index.max()
        # Find the previous date of the maximum date
        previous_date = data.index[data.index < max_date][-1]

        # Get the occupancy rate on the previous date
        previous_date_occupancy_rate = data.loc[previous_date, 'occupancy_rate']
        current_date = pd.Timestamp(datetime.now(timezone(APP_TIMEZONE)).date())
        train = data[data.index != current_date]
        arima_model.create_model(train,configObj)
        store_data(configObj,max_date,previous_date,previous_date_occupancy_rate)
        logging.debug("completed")
   except Exception as e:
           logging.debug(e)

def store_data(configObj,forecast_occupancy_date,current_occupancy_date,current_occupancy):
       current_occupancy_date = current_occupancy_date.strftime('%Y-%m-%d')
       forecast_occupancy_date = forecast_occupancy_date.strftime('%Y-%m-%d')
       arima_result = arima_model.get_model(configObj)
       forecast = arima_result.forecast(steps=1)
       forecast_occupancy = forecast.tolist()[0]

       try:
            mysqladapter.update_actual_occupancy(configObj.ACTIVE_HOTEL_ID,current_occupancy_date,current_occupancy)
       except Exception as e:
           logging.debug(e)
       try:
            mysqladapter.insert_forecast_occupancy(configObj.ACTIVE_HOTEL_ID,forecast_occupancy_date,forecast_occupancy)
       except Exception as e:
           logging.debug(e)
       logging.debug("updated")



def main():
        for i in config.hotel_list:
               threading.Thread(target=download_csv_and_generate_model(hotelId=i['ACTIVE_HOTEL_ID'])).start()
if __name__ == "__main__":
    main()