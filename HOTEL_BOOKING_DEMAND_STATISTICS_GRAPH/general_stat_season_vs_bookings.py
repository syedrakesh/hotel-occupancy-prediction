import plotly.express as px
from UTILITIES.config import BOOKING_CSV_FILE_LOCATION, ACTIVE_HOTEL_NAME
import pandas as pd
import numpy as np
df =pd.read_csv(BOOKING_CSV_FILE_LOCATION,on_bad_lines='skip',sep='\t',low_memory=False)
df['booking_arrival']=pd.to_datetime(df['booking_arrival']).dt.normalize()
df=df.rename(
    columns={'booking_id': 'bookings', 'booking_arrival': 'date'})
df['Year'] = df['date'].dt.year
df['Month'] = df['date'].dt.month
df['Season'] = np.where(df['Month'].isin([12, 1, 2]), 'Summer',
                        np.where(df['Month'].isin([3, 4, 5]), 'Autumn',
                                 np.where(df['Month'].isin([6, 7, 8]), 'Winter', 'Spring')))
df=df.sort_values('Year')
df = df.groupby(['Year','Season'])['bookings'].count().reset_index()
df['year-season'] =df['Year'].astype(str)+'-' + df['Season']
fig = px.bar(df, x="year-season", y="bookings", title='Booking Seasonal Demands Graph for '+ACTIVE_HOTEL_NAME+" Hotel")

fig.show()