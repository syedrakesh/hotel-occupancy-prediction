import plotly.express as px
from UTILITIES.config import OCCUPANCY_CSV_FILE_LOCATION, ACTIVE_HOTEL_NAME
import pandas as pd
import numpy as np
df =pd.read_csv(OCCUPANCY_CSV_FILE_LOCATION,on_bad_lines='skip',sep='\t')
df.drop_duplicates()
df['date']=pd.to_datetime(df['date']).dt. normalize()
df['Year'] = df['date'].dt.year
df['Month'] = df['date'].dt.month
df['Season'] = np.where(df['Month'].isin([12, 1, 2]), 'Summer',
                        np.where(df['Month'].isin([3, 4, 5]), 'Autumn',
                                 np.where(df['Month'].isin([6, 7, 8]), 'Winter', 'Spring')))
df=df.groupby(['Year','Season'])['occupancy_rate'].mean().reset_index()
df['year-season'] =df['Year'].astype(str)+'-' + df['Season']
# df['year-season'] = df[['Year', 'Season']].agg('-'.join, axis=1)
df=df.rename(
    columns={'occupancy_rate': 'occupancy'})
fig = px.bar(df, x="year-season", y="occupancy", title='Seasonal Occupancy Graph for '+ACTIVE_HOTEL_NAME+" Hotel")

fig.show()