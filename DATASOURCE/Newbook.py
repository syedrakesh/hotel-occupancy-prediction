import json
import pandas as pd

from UTILITIES import http_process, config


class Available_price:
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
            "adults": 2,
            "daily_mode": "true"
        }
        # Logger.log(message=f"Available_price: Price Fetching and Parsing process for {self.hotel_id} --- Started")
        # self.fetch_and_parse()
        # Logger.log(message=f"Available_price: Price Fetching and Parsing process for {self.hotel_id} --- Ended")
    def fetch_and_parse(self):
        response=http_process.http_request("POST",self.url,self.payload)
        if response.status_code == 200:
            try:
                jsonresponse = response.json()
                data = jsonresponse['data']
                d=next(iter(data.values()))
                # Logger.log(message=f"Available_price: Price Parsing for {self.hotel_id} --- Started", name="available_price")
                dt = d['tariffs_available']
                for dd in dt:
                    if 'Non Refundable, Limited Housekeeping' in dd['tariff_label']:
                            dtt = dd['tariffs_quoted']
                            for tariff in dtt:
                                tariff_date = tariff
                                tariff_json_obj = {}
                                tariff_json_obj['hotel_id'] = self.hotel_id

                                tariff_json_obj['tariff_date'] = tariff_date
                                tariff_json_obj['amount'] = dtt[tariff]['amount']
                                tariff_json_obj['competition_of'] = self.hotel_id
                                tariff_json_obj['hotel_name'] = self.hotel_name

                            # tariff_obj = json.loads(json.dumps(tariff_json_obj), object_hook=customOccupancyDecoder)
                                self.tariff_datewise.append(tariff_json_obj)
                            break
                    break

                df = pd.DataFrame(self.tariff_datewise)
                df1 = df[['hotel_id', 'tariff_date', 'amount','competition_of', 'hotel_name']]
                # Logger.log(message=f"Available_price: Price Parsing for {self.hotel_id} --- Ended", name="available_price")
                print(df)
                return df1
            except Exception as e:
                # Logger.log(e, name="available_price")
                m = f"Available_price: Failed to parse price for {self.hotel_id}"
                print(m)
                # Logger.log(message=m, name="available_price")
                return None

        else:
            print(response.reason)
            # Logger.log(message=f"Available_price: Failed to Parse Price for {self.hotel_id}, Reason: {response.reason}", name="available_price")
            return None

class Occupancy_rate:
    def __init__(self,hotel_id,hotel_instance,url,period_from,period_to):
        self.url=url
        self.hotel_id=hotel_id
        self.hotel_instance=hotel_instance
        # self.available_price_df=available_price_df
        self.occupancies=[]
        self.payload = {
            "region": "au",
            "api_key": hotel_instance,
            "period_from": period_from,
            "period_to": period_to,
        }
        # Logger.log(message=f"Occupancy_rate: Price Fetching and Parsing process for {self.hotel_id} --- Started")
        # self.fetch_and_parse()
        # Logger.log(message=f"Occupancy_rate: Price Fetching and Parsing process for {self.hotel_id} --- Ended")
    def fetch_and_parse(self):
        response=http_process.http_request("POST",self.url,self.payload)
        if response.status_code == 200:
            try:
                # Logger.log(message=f"Occupancy_rate: Occupancy Parsing for {self.hotel_id} --- Started", name="occupancy_rate")
                jsonresponse = response.json()
                # x = json.loads(response.text, object_hook=lambda d: SimpleNamespace(**d))
                data = jsonresponse['data']
                for d in data:
                    if self.hotel_id==config.NEWBOOK_HOTEL_ID_FOR_CATEGORY_EXCLUSION:
                        if d['category_name'] in config.NEWBOOK_EXCLUDED_CATEGORY:
                            continue

                    occupancy = d['occupancy']
                    for c in occupancy:
                        # print(type(occupancy[c]))
                        occupancy_obj = json.loads(json.dumps(occupancy[c]), object_hook=config.customOccupancyDecoder)
                        # print(type(occupancy_obj))
                        self.occupancies.append(occupancy_obj)
                df = pd.DataFrame(self.occupancies)
                df_agg = df.groupby(['date', ]).agg(
                    {'available': 'sum', 'occupied': 'sum', 'maintenance': 'sum'}).reset_index()
                room_count=getattr(config, "NEWBOOK_HOTEL_ROOMS_COUNT_FOR_"+str(self.hotel_id))
                df_agg['occupancy_rate'] = (df_agg['occupied'] / room_count) * 100
                df_agg['occupancy_rate'] = df_agg["occupancy_rate"].apply(lambda x: round(x, 2))
                df_agg = df_agg.drop(columns=['available', 'occupied', 'maintenance'])
                df_agg = df_agg[['occupancy_rate', 'date']]
                # Logger.log(message=f"Occupancy_rate: Occupancy Parsing for {self.hotel_id} --- Ended", name="occupancy_rate")
                print(df_agg)
                return df_agg
            except Exception as e:
                # Logger.log(e, name="occupancy_rate")
                m = f"Occupancy_rate: Failed to parse occupancy for {self.hotel_id}"
                print(m)
                # Logger.log(message=m, name="occupancy_rate")

        else:
            print(response.reason)
            # Logger.log(message=f"Occupancy_rate: Failed to Parse Price for {self.hotel_id}, Reason: {response.reason}", name="occupancy_rate")