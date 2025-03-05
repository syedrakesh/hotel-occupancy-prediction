import datetime
import pandas as pd
import plotly.express as px
from pytz import timezone

from ML_MODELS import prophet_model, arima_model

from UTILITIES.config import OCCUPANCY_CSV_FILE_LOCATION, FORECASTING_START_DATE, FORECASTING_END_DATE, \
    ACTIVE_HOTEL_NAME, APP_TIMEZONE

######## get 3 years historical booking data from NEWBOOK ###############
df = pd.read_csv(OCCUPANCY_CSV_FILE_LOCATION, delimiter='\t', skiprows=1, names=['occupancy_rate', 'date'])
df.drop_duplicates()
df['date'] = pd.to_datetime(df['date'])
df['occupancy_rate'] = pd.to_numeric(df['occupancy_rate'])
df.set_index('date', inplace=True)

train_size = int(len(df) * 0.8)
train, test = df.iloc[:train_size], df.iloc[train_size:]
#### train the model with train data  ###########
model=arima_model.get_model()
model_fit = model.fit()
################################################
start_date = FORECASTING_START_DATE
end_date = FORECASTING_END_DATE

# Create a DataFrame with the date range
date_range = pd.date_range(start=start_date, end=end_date, freq='D')
date_range_df = pd.DataFrame({'occupancy_rate': date_range})

# Generate forecasts for the date range
forecast = model_fit.predict(start=start_date, end=end_date, typ='levels')

# Get the predicted values
# date_range_predictions = forecast[['ds','yhat'],]
# print(date_range_predictions)
test_output_viz = forecast[['occupancy_rate']]
# test_output_viz = test_output_viz.set_index('ds')
# plt.figure(figsize=(12,7))
#
#
# plt.plot(test_output_viz['ds'],test_output_viz['yhat'],marker='o',color='blue',label='')
# plt.title("Occupancy Forecasting")
# mplcursors.cursor(hover=True)
# # plt.plot(test_output_viz['ds'],test_output_viz['Forecast'],color='red',label='Forecasting')
# plt.xlabel('Date')
# plt.ylabel('Occupancy')
#
# plt.show()

fig = px.bar(test_output_viz, x="occupancy_rate", y=forecast.index,text="occupancy", title='Forcasting Occupancy for '+ACTIVE_HOTEL_NAME+' Hotel ('+FORECASTING_START_DATE+' to '+FORECASTING_END_DATE+')')
fig.update_traces(texttemplate='%{text:.2s}', textposition='outside')
fig.update_layout(yaxis_title='occupancy', xaxis=dict(
        title='date',
tickangle=45,

        tickmode='linear'))
fig.show()

