import numpy as np
import pandas as pd
from sklearn.preprocessing import MinMaxScaler
from sklearn.metrics import mean_absolute_error
import torch
import torch.nn as nn
from torch.utils.data import DataLoader, TensorDataset
import plotly.graph_objects as go
from UTILITIES.config import OCCUPANCY_CSV_FILE_LOCATION

# Load and preprocess data
data = pd.read_csv(OCCUPANCY_CSV_FILE_LOCATION, delimiter='\t', skiprows=1, names=['occupancy_rate', 'date'])
data['date'] = pd.to_datetime(data['date'])
data['occupancy_rate'] = pd.to_numeric(data['occupancy_rate'])

# Set date as index
data.set_index('date', inplace=True)

# Normalize the data
scaler = MinMaxScaler(feature_range=(0, 1))
scaled_data = scaler.fit_transform(data['occupancy_rate'].values.reshape(-1, 1))

# Prepare training and test data
train_size = int(len(scaled_data) * 0.8)
train, test = scaled_data[:train_size], scaled_data[train_size:]

def create_dataset(dataset, look_back=1):
    X, Y = [], []
    for i in range(len(dataset) - look_back - 1):
        a = dataset[i:(i + look_back), 0]
        X.append(a)
        Y.append(dataset[i + look_back, 0])
    return np.array(X), np.array(Y)

look_back = 23
X_train, y_train = create_dataset(train, look_back)
X_test, y_test = create_dataset(test, look_back)

# Convert to PyTorch tensors
X_train = torch.tensor(X_train, dtype=torch.float32).unsqueeze(2)
y_train = torch.tensor(y_train, dtype=torch.float32).unsqueeze(1)
X_test = torch.tensor(X_test, dtype=torch.float32).unsqueeze(2)
y_test = torch.tensor(y_test, dtype=torch.float32).unsqueeze(1)

# Create DataLoader
batch_size = 1
train_dataset = TensorDataset(X_train, y_train)
train_loader = DataLoader(train_dataset, batch_size=batch_size, shuffle=True)

# Define the LSTM model with dropout regularization
class LSTMModel(nn.Module):
    def __init__(self, input_size=1, hidden_layer_size=50, output_size=1, dropout_prob=0.2):
        super(LSTMModel, self).__init__()
        self.hidden_layer_size = hidden_layer_size
        self.lstm = nn.LSTM(input_size, hidden_layer_size, batch_first=True)
        self.dropout = nn.Dropout(dropout_prob)
        self.linear = nn.Linear(hidden_layer_size, output_size)

    def forward(self, input_seq):
        lstm_out, _ = self.lstm(input_seq)
        lstm_out = self.dropout(lstm_out)  # Apply dropout regularization
        predictions = self.linear(lstm_out[:, -1])
        return predictions

# Instantiate and train the model
model = LSTMModel()
loss_function = nn.MSELoss()
optimizer = torch.optim.Adam(model.parameters(), lr=0.001)

epochs = 20
for epoch in range(epochs):
    model.train()
    for seq, labels in train_loader:
        optimizer.zero_grad()
        y_pred = model(seq)
        loss = loss_function(y_pred, labels)
        loss.backward()
        optimizer.step()
    print(f'Epoch {epoch + 1} Loss: {loss.item()}')

# Make predictions
model.eval()
test_predict = model(X_test).detach().numpy()

# Inverse transform predictions and true values
test_predict = scaler.inverse_transform(test_predict)
y_test = scaler.inverse_transform(y_test.numpy())

# Calculate MAE
mae = mean_absolute_error(y_test, test_predict)
print(f'Mean Absolute Error (MAE): {mae}')

# Prepare data for plotting (last 30 days)
last_30_days = min(len(test_predict), 30)
plot_data = pd.DataFrame({
    'Date': data.index[-last_30_days:],
    'Actual': y_test[-last_30_days:].flatten(),
    'Test Predict': test_predict[-last_30_days:].flatten()
})

# Plot with Plotly Express
fig = go.Figure()
fig.add_trace(go.Scatter(x=plot_data['Date'], y=plot_data['Actual'], mode='lines', name='Actual Data'))
fig.add_trace(go.Scatter(x=plot_data['Date'], y=plot_data['Test Predict'], mode='lines', name='Test Predict'))

fig.update_layout(
    title='Occupancy Rate Forecast with LSTM (PyTorch) - Last 30 Days',
    xaxis_title='Date',
    yaxis_title='Occupancy Rate'
)

fig.show()
