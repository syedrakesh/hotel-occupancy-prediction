from flask import Flask, request, jsonify
import joblib
import numpy as np

app = Flask(__name__)

# Load the model
model = joblib.load('model.pkl')

@app.route('/predict', methods=['POST'])
def predict():
    dummy_data = {
        'labels': ['January', 'February', 'March', 'April', 'May'],
        'data': [65, 59, 77, 81, 56]  # Example data for each label
    }
    return jsonify(dummy_data)


    data = request.json
    if 'features' in data and data['features']:
        features = np.array(data['features']).reshape(1, -1)
        prediction = model.predict(features)
        return jsonify({'prediction': prediction.tolist()})
    else:
        return jsonify({'error': 'No data found'}), 400

if __name__ == '__main__':
    app.run(debug=True)