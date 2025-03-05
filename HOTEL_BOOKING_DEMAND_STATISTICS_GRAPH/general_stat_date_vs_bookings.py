import plotly.express as px
import pandas as pd
from UTILITIES.config import BOOKING_CSV_FILE_LOCATION, ACTIVE_HOTEL_NAME

df =pd.read_csv(BOOKING_CSV_FILE_LOCATION,on_bad_lines='skip',sep='\t',low_memory=False)
df['booking_arrival']=pd.to_datetime(df['booking_arrival']).dt.normalize()
data = df.groupby(['booking_arrival'])['booking_id'].count().reset_index().rename(
    columns={'booking_id': 'bookings', 'booking_arrival': 'date'})
fig = px.bar(data, x="date", y="bookings", title='Booking Demands Graph for '+ACTIVE_HOTEL_NAME+" Hotel")
fig.show()