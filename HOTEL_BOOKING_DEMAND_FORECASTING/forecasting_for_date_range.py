import datetime
import pandas as pd
import plotly.express as px
from pytz import timezone

from ML_MODELS import prophet_model

from UTILITIES.config import BOOKING_CSV_FILE_LOCATION, FORECASTING_START_DATE, FORECASTING_END_DATE, ACTIVE_HOTEL_NAME, \
    APP_TIMEZONE

######## get 3 years historical booking data from NEWBOOK ###############
df =pd.read_csv(BOOKING_CSV_FILE_LOCATION,on_bad_lines='skip',sep='\t')
df = df[['booking_id','booking_arrival']].copy()
df['booking_arrival']=pd.to_datetime(df['booking_arrival']).dt. normalize()
##################################################
data_df = df.groupby(['booking_arrival'])['booking_id'].count().reset_index().rename(
    columns={'booking_id': 'y', 'booking_arrival': 'ds'})
# get last 1 month data as test data
month_ago = datetime.datetime.now(timezone(APP_TIMEZONE)) - datetime.timedelta(days=30)
month_ago = datetime.datetime.combine(month_ago, datetime.datetime.min.time())
train_df = data_df.loc[(data_df['ds'] < month_ago)]
test_df = data_df.loc[(data_df['ds'] >= month_ago)]
#####################################################

#### train the model with train data  ###########
model=prophet_model.get_model(train_df)
################################################
start_date = FORECASTING_START_DATE
end_date = FORECASTING_END_DATE

# Create a DataFrame with the date range
date_range = pd.date_range(start=start_date, end=end_date, freq='D')
date_range_df = pd.DataFrame({'ds': date_range})

# Generate forecasts for the date range
forecast = model.predict(date_range_df)

# Get the predicted values
# date_range_predictions = forecast[['ds','yhat'],]
# print(date_range_predictions)
test_output_viz = forecast[['ds', 'yhat']]
# test_output_viz = test_output_viz.set_index('ds')
# plt.figure(figsize=(12,7))
#
#
# plt.plot(test_output_viz['ds'],test_output_viz['yhat'],marker='o',color='blue',label='')
# plt.title("Hotel Demands")
# mplcursors.cursor(hover=True)
# # plt.plot(test_output_viz['ds'],test_output_viz['Forecast'],color='red',label='Forecasting')
# plt.xlabel('Date')
# plt.ylabel('Bookings')
#
# plt.show()
fig = px.bar(test_output_viz, x="ds", y="yhat",text="yhat", title='Forcasting Booking Demands for '+ACTIVE_HOTEL_NAME+' Hotel ('+FORECASTING_START_DATE+' to '+FORECASTING_END_DATE+')')
fig.update_traces(texttemplate='%{text:.2s}', textposition='outside')
fig.update_layout(yaxis_title='bookings', xaxis=dict(
        title='date',
tickangle=45,

        tickmode='linear'))
fig.show()
