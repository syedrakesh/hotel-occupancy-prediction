import datetime
import pandas as pd
from pytz import timezone
from DATASOURCE import Newbook
from UTILITIES.config import NEWBOOK_OCCUPANCY_RATE_API_URL, APP_TIMEZONE


def get_data_occupancy(configObj):

    # period_from1 = datetime.datetime.now(timezone(APP_TIMEZONE)).date() - datetime.timedelta(days=365 * 3)
    period_from2 = datetime.datetime.now(timezone(APP_TIMEZONE)).date() - datetime.timedelta(days=(365 * 2))
    period_from3 = datetime.datetime.now(timezone(APP_TIMEZONE)).date() - datetime.timedelta(days=365)
    # period_to1 = datetime.datetime.now(timezone(APP_TIMEZONE)).date() - datetime.timedelta(days=(365 * 2)+1)
    period_to2 = datetime.datetime.now(timezone(APP_TIMEZONE)).date() - datetime.timedelta(days=(365 +1))
    period_to3 = datetime.datetime.now(timezone(APP_TIMEZONE)).date()
    # period_from1 = period_from1.strftime("%Y-%m-%d")
    period_from2 = period_from2.strftime("%Y-%m-%d")
    period_from3 = period_from3.strftime("%Y-%m-%d")
    # period_to1 = period_to1.strftime("%Y-%m-%d")
    period_to2 = period_to2.strftime("%Y-%m-%d")
    period_to3 = period_to3.strftime("%Y-%m-%d")
    # price_data=Newbook.Available_price(688688,'',"instances_1bd92cd3294be265e823dd587d4302fa",NEWBOOK_AVAILABLE_PRICE_API_URL,period_from,period_to1).fetch_and_parse()
    # price_data1=Newbook.Available_price(688688,'',"instances_1bd92cd3294be265e823dd587d4302fa",NEWBOOK_AVAILABLE_PRICE_API_URL,period_to1,period_to).fetch_and_parse()
    # occupancy_data_year1 = Newbook.Occupancy_rate(ACTIVE_HOTEL_ID, ACTIVE_HOTEL_INSTANCE,
    #                                         NEWBOOK_OCCUPANCY_RATE_API_URL, period_from1, period_to1).fetch_and_parse()
    occupancy_data_year2 = Newbook.Occupancy_rate(configObj.ACTIVE_HOTEL_ID, configObj.ACTIVE_HOTEL_INSTANCE,
                                             NEWBOOK_OCCUPANCY_RATE_API_URL, period_from2,
                                             period_to2).fetch_and_parse()
    occupancy_data_year3 = Newbook.Occupancy_rate(configObj.ACTIVE_HOTEL_ID, configObj.ACTIVE_HOTEL_INSTANCE,
                                             NEWBOOK_OCCUPANCY_RATE_API_URL, period_from3, period_to3).fetch_and_parse()

    df = pd.concat([
        # pd.DataFrame(occupancy_data_year1),
        pd.DataFrame(occupancy_data_year2),
        pd.DataFrame(occupancy_data_year3)
    ])
    df['date'] = pd.to_datetime(df['date']).dt.normalize()
    df.to_csv(configObj.OCCUPANCY_CSV_FILE_LOCATION, sep='\t', encoding='utf-8', index=False)

