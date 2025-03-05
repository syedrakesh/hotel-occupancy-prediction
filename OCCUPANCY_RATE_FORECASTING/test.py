from datetime import datetime
import pandas as pd
from flask import jsonify, Flask, request
app = Flask(__name__)
from ML_MODELS import arima_model
arima_result = arima_model.get_model()
@app.route('/predict', methods=['GET'])
def get_data():
        from_date_str = request.args.get('from_date')
        to_date_str = request.args.get('to_date')

        if not from_date_str or not to_date_str:
            return jsonify({'error': 'Please provide both from_date and to_date'}), 400

        from_date = datetime.strptime(from_date_str, '%Y-%m-%d')
        to_date = datetime.strptime(to_date_str, '%Y-%m-%d')

        # Calculate the number of days to forecast
        forecast_period = (to_date - from_date).days + 1

        # Ensure the forecast period is positive
        if forecast_period <= 0:
            return jsonify({'error': 'to_date must be after from_date'}), 400
        # forecast_period = 30
        forecast_start = len(arima_result.data.endog)
        forecast_end = forecast_start + forecast_period - 1
        # forecast_start = len(data)
        # forecast_end = len(data) + forecast_period - 1
        forecast = arima_result.predict(start=forecast_start, end=forecast_end, typ='levels')

        # Prepare future dates
        future_dates = pd.date_range(start=from_date, periods=forecast_period)

        # Convert data to DataFrame for Plotly
        forecast_data = {
            'labels': future_dates.strftime('%Y-%m-%d').tolist(),
            'data': forecast.tolist()
        }
        return jsonify(forecast_data)
if __name__ == '__main__':
    app.run(debug=True)
