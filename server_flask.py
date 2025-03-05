from datetime import datetime
import pandas as pd
from flask import jsonify, Flask, request
import numpy as np
from OCCUPANCY_RATE_STATISTICS_GRAPH import general_stat_date_vs_occupancy
from UTILITIES import config
from UTILITIES import mysqladapter

app = Flask(__name__)
from ML_MODELS import arima_model


@app.route('/test', methods=['GET'])
def test_data():
    return jsonify({'message': 'API is working'}), 200
@app.route('/stat', methods=['GET'])
def getStatData():
        from_date_str = request.args.get('from_date')
        to_date_str = request.args.get('to_date')
        hotel_id = request.args.get('hotel')
        print("hotel_id")
        print(hotel_id)

        if not from_date_str or not to_date_str or not hotel_id:
            return jsonify({'error': 'Please provide from_date and to_date and hotel'}), 400

        from_date = datetime.strptime(from_date_str, '%Y-%m-%d')
        to_date = datetime.strptime(to_date_str, '%Y-%m-%d')

        # Calculate the number of days to forecast
        forecast_period = (to_date - from_date).days + 1

        # Ensure the forecast period is positive
        if forecast_period <= 0:
            return jsonify({'error': 'to_date must be after from_date'}), 400
        # forecast_period = 30
        configObj = config.config(hotel_id)

        df=general_stat_date_vs_occupancy.getData(configObj)
        df=df.loc[from_date:to_date]
        # df['occupancy_rate_predict'] = np.random.randint(50, 90, df.shape[0])
        # Prepare future dates
        future_dates = pd.date_range(start=from_date, periods=forecast_period)

        # Convert data to DataFrame for Plotly
        forecast_data = {
            'labels': future_dates.strftime('%Y-%m-%d').tolist(),
            'data': df['occupancy_rate'].to_list(),
            # 'data1':df['occupancy_rate_predict'].to_list()
        }
        return jsonify(forecast_data)

@app.route('/perform-graph', methods=['GET'])
def getPerformGraphData():

        from_date_str = request.args.get('from_date')
        to_date_str = request.args.get('to_date')
        hotel_id = request.args.get('hotel')
        print("hotel_id")
        print(hotel_id)

        if not from_date_str or not to_date_str or not hotel_id:
            return jsonify({'error': 'Please provide from_date and to_date and hotel'}), 400

        from_date = datetime.strptime(from_date_str, '%Y-%m-%d')
        to_date = datetime.strptime(to_date_str, '%Y-%m-%d')
        rows=mysqladapter.select_occupancy(hotel_id,from_date,to_date)
        # Initialize lists for each column
        labels = []
        data = []
        data1 = []

        # Iterate over the rows and separate data into the lists
        for row in rows:
            labels.append(row[0])
            data.append(row[1])
            data1.append(row[2])

        forecast_data = {
            'labels': labels,
            'data': data,
            'data1':data1
        }
        return jsonify(forecast_data)

@app.route('/predict', methods=['GET'])
def get_data():
        from_date_str = request.args.get('from_date')
        to_date_str = request.args.get('to_date')
        hotel_id = request.args.get('hotel')
        print("hotel_id")
        print(hotel_id)

        if not from_date_str or not to_date_str or not hotel_id:
            return jsonify({'error': 'Please provide from_date and to_date and hotel'}), 400

        from_date = datetime.strptime(from_date_str, '%Y-%m-%d')
        to_date = datetime.strptime(to_date_str, '%Y-%m-%d')

        # Calculate the number of days to forecast
        forecast_period = (to_date - from_date).days + 1

        # Ensure the forecast period is positive
        if forecast_period <= 0:
            return jsonify({'error': 'to_date must be after from_date'}), 400
        # forecast_period = 30
        configObj = config.config(hotel_id)
        arima_result = arima_model.get_model(configObj)
        data = general_stat_date_vs_occupancy.getData(configObj)
        print('predictra')
        print(data)
        # Get the last date in the training data
        last_date_in_data = data.index[-1]

        # Get the first date in the training data
        first_date_in_data = data.index[0]

        # Calculate the number of days to forecast
        num_days_to_forecast = (to_date - from_date).days + 1  # +1 to include the `to_date`

        if from_date <= last_date_in_data:
            # from_date is within the training data range (in-sample or just after it)
            in_sample_start = max(0, (from_date - first_date_in_data).days)
            if to_date <= last_date_in_data:
                # Fully in-sample prediction
                forecast_start = in_sample_start
                forecast_end = in_sample_start + num_days_to_forecast - 1
            else:
                # Mixed in-sample and out-of-sample prediction
                forecast_start = in_sample_start
                out_sample_start = len(data)
                forecast_end = out_sample_start + (to_date - last_date_in_data).days
        else:
            # Fully out-of-sample prediction
            days_offset = (from_date - last_date_in_data).days
            forecast_start = len(data) + days_offset
            forecast_end = forecast_start + num_days_to_forecast - 1
        # forecast_start = len(data)
        # forecast_end = len(data) + forecast_period - 1
        forecast = arima_result.predict(start=forecast_start, end=forecast_end)

        # Prepare future dates
        future_dates = pd.date_range(start=from_date, periods=forecast_period)

        # Convert data to DataFrame for Plotly
        forecast_data = {
            'labels': future_dates.strftime('%Y-%m-%d').tolist(),
            'data': forecast.tolist()
        }
        return jsonify(forecast_data)
if __name__ == '__main__':
    from waitress import serve
    serve(app, host="0.0.0.0", port=8880)
    # app.run(debug=True)
