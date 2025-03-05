from statsmodels.tsa.arima.model import ARIMA
import joblib


def create_model(train_data,configObj):
    model = ARIMA(train_data['occupancy_rate'], order=(8, 1, 9))
    model = model.fit()
    joblib.dump(model, configObj.MODEL_PATH)
    return model
def get_model(configObj):
    model = joblib.load(configObj.MODEL_PATH)
    return model



