import pandas as pd
def getData(configObj):
    df =pd.read_csv(configObj.OCCUPANCY_CSV_FILE_LOCATION,on_bad_lines='skip',sep='\t')
    df.drop_duplicates()
    df['date']=pd.to_datetime(df['date']).dt. normalize()
    df['occupancy_rate'] = pd.to_numeric(df['occupancy_rate'])
    df.set_index('date', inplace=True)
    return df

# df=df.rename(
#     columns={'occupancy_rate': 'occupancy'})
# fig = px.bar(df, x="date", y="occupancy", title='Occupancy Graph for '+ACTIVE_HOTEL_NAME+' Hotel')

# fig.show()