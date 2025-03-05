import datetime
import pandas as pd
import plotly.express as px
from pytz import timezone

from ML_MODELS import prophet_model

from sklearn.metrics import mean_absolute_error

from UTILITIES.config import BOOKING_CSV_FILE_LOCATION, ACTIVE_HOTEL_NAME, APP_TIMEZONE

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
forecast = model.make_future_dataframe(periods=31)
pred = model.predict(forecast)
forecast_df = test_df.merge(pred, left_on='ds', right_on='ds', how='inner') \
        .rename(columns={'yhat': 'Forecast'})
test_output_viz = forecast_df[['ds', 'y', 'Forecast']]
# test_output_viz = test_output_viz.set_index('ds')
# plt.figure(figsize=(14,7))
# plt.plot(test_output_viz['ds'],test_output_viz['y'],color='blue',label='Actual')
# plt.plot(test_output_viz['ds'],test_output_viz['Forecast'],color='red',label='Forecasting')
# plt.xlabel('Date')
# plt.ylabel('Bookings')
# x_label_position = (plt.gca().get_xlim()[0] + plt.gca().get_xlim()[1]) / 2
# y_label_position = plt.gca().get_ylim()[0] - 0.12 * (plt.gca().get_ylim()[1] - plt.gca().get_ylim()[0])
#
# # Add custom text
# plt.text(x_label_position, y_label_position, 'Performance Matrix MAE: {:.0f}'.format(mean_absolute_error(forecast_df[['Forecast']], forecast_df[['y']])), fontsize=12, color='black', ha='center')
# plt.legend()
# plt.show()
fig=px.line(
    data_frame = test_output_viz,
    x = "ds",
    y = ["y","Forecast"],
    orientation = "v",

    title=ACTIVE_HOTEL_NAME+' Hotel Booking Demands Actual vs Forecasting '+'[Performance Matrix MAE(Mean Absolute Error): {:.0f}]'.format(mean_absolute_error(forecast_df[['Forecast']], forecast_df[['y']])),
)
newnames = {'y':'Actual','Forecast':'Forecasted'}
fig.for_each_trace(lambda t: t.update(name = newnames[t.name]))
fig.update_layout(yaxis_title='bookings', xaxis_title='date',legend_title='Values')
fig.show()

# test_output_viz.plot.line(figsize=(7, 4), fontsize=12)
# print('Performance Matrix MAE: {:.0f}'.format(mean_absolute_error(forecast_df[['Prophet_Forecast']], forecast_df[['y']])))

