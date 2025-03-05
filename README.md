# Hotel Occupancy Prediction Project

This project is designed to predict hotel occupancy rates using an ARIMA time series model. It provides an API using Flask to retrieve past occupancy data, visualize trends, and generate future occupancy predictions.

## Features

- Fetch occupancy data from a database
- Generate and train ARIMA models for prediction
- Serve API endpoints using Flask

## Installation Guide

### Prerequisites

Ensure you have the following installed on your system:

- Python 3.8+
- MySQL Server
- Git

### Clone the Repository

```sh
git clone https://github.com/syedrakesh/hotel-occupancy-prediction.git
cd hotel-occupancy-prediction
```

### Install Required Dependencies

```sh
pip install -r requirements.txt
```

### Database Configuration

1. Create a MySQL database:
   ```sql
   CREATE DATABASE ml_db;
   ```
2. Update `UTILITIES/config.py` with your MySQL credentials.
3. Update database configuration in `UTILITIES/db_data.py`.
4. Import the dummy database from `DB/ml_db.sql`.

### Update Base Directory

Modify `BASE_DIR` in `UTILITIES/config.py` to match your project’s directory structure.

### Running the Flask Server

```sh
python server_flask.py
```

The server runs on `http://0.0.0.0:8880/`

### Training the Model

To train or update the ARIMA model, run:

```sh
python hotel-occupancy-prediction/train_model.py
```

## API Endpoints

### 1. Test API

```sh
GET /test
```

Response:

```json
{"message": "API is working"}
```

### 2. Fetch Statistical Data

```sh
GET /stat?from_date=YYYY-MM-DD&to_date=YYYY-MM-DD&hotel=HOTEL_ID
```

Returns occupancy rate statistics for a given hotel and date range.

### 3. Fetch Performance Graph Data

```sh
GET /perform-graph?from_date=YYYY-MM-DD&to_date=YYYY-MM-DD&hotel=HOTEL_ID
```

Returns actual and predicted occupancy rate data.

### 4. Predict Future Occupancy Rates

```sh
GET /predict?from_date=YYYY-MM-DD&to_date=YYYY-MM-DD&hotel=HOTEL_ID
```

Generates and returns occupancy predictions using the trained ARIMA model.

**Maintainer:** Syed Rakesh Uddin

