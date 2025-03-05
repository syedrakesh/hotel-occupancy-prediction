import numpy as np
import pandas as pd
from sklearn.metrics import mean_absolute_error
from statsmodels.tsa.statespace.sarimax import SARIMAX
import plotly.graph_objects as go
from UTILITIES.config import OCCUPANCY_CSV_FILE_LOCATION

# Load and preprocess data
data = pd.read_csv(OCCUPANCY_CSV_FILE_LOCATION, delimiter='\t', skiprows=1, names=['occupancy_rate', 'date'])
data['date'] = pd.to_datetime(data['date'])
data['occupancy_rate'] = pd.to_numeric(data['occupancy_rate'])

# Set date as index
data.set_index('date', inplace=True)

# Split data into train and test sets
train_size = int(len(data) * 0.8)
train, test = data[:train_size], data[train_size:]

# Fit SARIMA model
sarima_model = SARIMAX(train['occupancy_rate'], order=(3, 0, 4), seasonal_order=(0, 0, 0, 0))
sarima_result = sarima_model.fit()

# Forecast for the test period
forecast_start = len(train)
forecast_end = len(data) - 1
forecast = sarima_result.predict(start=forecast_start, end=forecast_end, typ='levels')

# Calculate MAE
mae = mean_absolute_error(test['occupancy_rate'], forecast)
print(f'Mean Absolute Error (MAE): {mae}')

# Prepare data for plotting (last 30 days)
last_30_days = test.index[-30:]
last_30_actual = test['occupancy_rate'][-30:]
last_30_forecast = forecast[-30:]

# Convert data to DataFrame for Plotly
plot_data = pd.DataFrame({
    'Date': last_30_days,
    'Actual': last_30_actual,
    'Forecast': last_30_forecast
})

# Plot with Plotly Express
fig = go.Figure()
fig.add_trace(go.Scatter(x=plot_data['Date'], y=plot_data['Actual'], mode='lines', name='Actual Data'))
fig.add_trace(go.Scatter(x=plot_data['Date'], y=plot_data['Forecast'], mode='lines', name='Forecast'))

fig.update_layout(
    title=f'Occupancy Rate Forecast with SARIMA [Mean Absolute Error (MAE): {mae}] - Last 30 Days',
    xaxis_title='Date',
    yaxis_title='Occupancy Rate'
)

fig.show()
