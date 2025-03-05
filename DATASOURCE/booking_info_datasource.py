import datetime
import pandas as pd
from pytz import timezone

from UTILITIES import http_process
from UTILITIES.config import NEWBOOK_BOOKING_INFO_API_URL, BOOKING_CSV_FILE_LOCATION, ACTIVE_HOTEL_ID, \
    ACTIVE_HOTEL_NAME, ACTIVE_HOTEL_INSTANCE, APP_TIMEZONE


class BookingInfo:
    def __init__(self,hotel_id,hotel_name,hotel_instance,url,period_from,period_to):
        self.url=url
        self.hotel_id=hotel_id
        self.hotel_name=hotel_name
        self.hotel_instance=hotel_instance
        self.tariff_datewise=[]
        self.period_from=period_from
        self.period_to=period_to
        self.payload = {
            "region": "au",
            "api_key": hotel_instance,
            "period_from": period_from,
            "period_to": period_to,
            "list_type": "arrived"
        }

    def fetch_and_parse(self):
        response=http_process.http_request("GET",self.url,self.payload)
        if response.status_code == 200:
            try:
                jsonresponse = response.json()
                data = jsonresponse['data']
                return data
                # d=next(iter(data.values()))

            except Exception as e:
                m = f"Booking info for {self.hotel_id}"
                print(m)


        else:
            print(response.reason)
            # Logger.log(message=f"Available_price: Failed to Parse Price for {self.hotel_id}, Reason: {response.reason}", name="available_price")
            return None
def get_data_bookings():
    # period_from1 = datetime.datetime.now(timezone(APP_TIMEZONE)).date() - datetime.timedelta(days=365 * 3)
    period_from2 = datetime.datetime.now(timezone(APP_TIMEZONE)).date() - datetime.timedelta(days=(365 * 2))
    period_from3 = datetime.datetime.now(timezone(APP_TIMEZONE)).date() - datetime.timedelta(days=365)
    # period_to1 = datetime.datetime.now(timezone(APP_TIMEZONE)).date() - datetime.timedelta(days=(365 * 2) + 1)
    period_to2 = datetime.datetime.now(timezone(APP_TIMEZONE)).date() - datetime.timedelta(days=(365 + 1))
    period_to3 = datetime.datetime.now(timezone(APP_TIMEZONE)).date()
    # period_from1 = period_from1.strftime("%Y-%m-%d")
    period_from2 = period_from2.strftime("%Y-%m-%d")
    period_from3 = period_from3.strftime("%Y-%m-%d")
    # period_to1 = period_to1.strftime("%Y-%m-%d")
    period_to2 = period_to2.strftime("%Y-%m-%d")
    period_to3 = period_to3.strftime("%Y-%m-%d")
    # bookingInfo_year1 = BookingInfo(ACTIVE_HOTEL_ID, ACTIVE_HOTEL_NAME, ACTIVE_HOTEL_INSTANCE,
    #                           NEWBOOK_BOOKING_INFO_API_URL, period_from1, period_to1).fetch_and_parse()
    bookingInfo_year2 = BookingInfo(ACTIVE_HOTEL_ID, ACTIVE_HOTEL_NAME, ACTIVE_HOTEL_INSTANCE,
                               NEWBOOK_BOOKING_INFO_API_URL, period_from2, period_to2).fetch_and_parse()
    bookingInfo_year3 = BookingInfo(ACTIVE_HOTEL_ID, ACTIVE_HOTEL_NAME,ACTIVE_HOTEL_INSTANCE,
                               NEWBOOK_BOOKING_INFO_API_URL, period_from3, period_to3).fetch_and_parse()
    df_booking=pd.concat(
        [
         # pd.DataFrame(bookingInfo_year1),
         pd.DataFrame(bookingInfo_year2),
         pd.DataFrame(bookingInfo_year3)
        ])
    # df_booking=pd.DataFrame(bookingInfo)
    df_booking.to_csv(BOOKING_CSV_FILE_LOCATION, sep='\t', encoding='utf-8',index=False)

