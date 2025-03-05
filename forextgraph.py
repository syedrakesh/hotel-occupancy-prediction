import websocket
import json
import matplotlib.pyplot as plt
from matplotlib.animation import FuncAnimation
import pandas as pd
import datetime

# Initialize empty lists to store data
timestamps = []
prices = []


# Function to update the plot
def update_plot(frame):
    if timestamps and prices:
        ax.clear()
        ax.plot(timestamps, prices, color='blue')
        ax.set_title('Live BTC/USDT Price')
        ax.set_xlabel('Time')
        ax.set_ylabel('Price (USDT)')
        plt.xticks(rotation=45)
        plt.tight_layout()


# WebSocket callback functions
def on_message(ws, message):
    data = json.loads(message)
    current_time = datetime.datetime.now()
    price = float(data['p'])

    timestamps.append(current_time)
    prices.append(price)

    # Limit the number of data points displayed on the graph
    if len(timestamps) > 100:
        timestamps.pop(0)
        prices.pop(0)


def on_error(ws, error):
    print(error)


def on_close(ws, close_status_code, close_msg):
    print("WebSocket closed")


def on_open(ws):
    print("WebSocket connection opened")


# Create a Matplotlib figure and axis
fig, ax = plt.subplots()

# Set up the animation
ani = FuncAnimation(fig, update_plot, interval=1000)  # Update every 1 second

# Connect to the WebSocket
socket = "wss://stream.binance.com:9443/ws/btcusdt@trade"
ws = websocket.WebSocketApp(socket, on_message=on_message, on_error=on_error, on_close=on_close)
ws.on_open = on_open

# Start WebSocket in a thread
import threading

ws_thread = threading.Thread(target=ws.run_forever)
ws_thread.start()

# Show the plot
plt.show()

# Close WebSocket connection on plot close
plt.close()
ws.close()
