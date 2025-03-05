import numpy as np
import pandas as pd
from sklearn.ensemble import RandomForestRegressor
from sklearn.metrics import mean_absolute_error
import plotly.graph_objects as go
from UTILITIES.config import OCCUPANCY_CSV_FILE_LOCATION

# Load and preprocess data
data = pd.read_csv(OCCUPANCY_CSV_FILE_LOCATION, delimiter='\t', skiprows=1, names=['occupancy_rate', 'date'])
data['date'] = pd.to_datetime(data['date'])
data['occupancy_rate'] = pd.to_numeric(data['occupancy_rate'])

# Split data into train and test sets
train_size = int(len(data) * 0.8)
train, test = data[:train_size], data[train_size:]

# Prepare features and target variable
X_train, y_train = np.arange(len(train)).reshape(-1, 1), train['occupancy_rate']
X_test, y_test = np.arange(len(train), len(data)).reshape(-1, 1), test['occupancy_rate']

# Create and train Random Forest model
rf_model = RandomForestRegressor(n_estimators=100, random_state=60)
rf_model.fit(X_train, y_train)

# Make predictions
train_predict = rf_model.predict(X_train)
test_predict = rf_model.predict(X_test)

# Calculate MAE
mae = mean_absolute_error(y_test, test_predict)
print(f'Mean Absolute Error (MAE): {mae}')

# Prepare data for plotting
dates_test = test.index
actual_test = test['occupancy_rate']
forecast_test = test_predict

# Plot with Plotly
fig = go.Figure()
fig.add_trace(go.Scatter(x=dates_test, y=actual_test, mode='lines', name='Actual Data'))
fig.add_trace(go.Scatter(x=dates_test, y=forecast_test, mode='lines', name='Forecast'))

fig.update_layout(
    title=f'Occupancy Rate Forecast with Random Forest Regression [Mean Absolute Error (MAE): {mae}]',
    xaxis_title='Date',
    yaxis_title='Occupancy Rate'
)

fig.show()
