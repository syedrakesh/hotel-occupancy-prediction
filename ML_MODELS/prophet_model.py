from prophet import Prophet
def get_model(train_data):
    train_df_prophet = train_data.copy()
    model = Prophet(yearly_seasonality=True)
    # model.add_seasonality(name='yearly')

    model.add_country_holidays(country_name='AU')
    model.fit(train_df_prophet)
    return model