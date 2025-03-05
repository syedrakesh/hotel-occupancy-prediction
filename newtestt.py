import requests

# Replace 'YOUR_API_KEY' with your actual API key from Alpha Vantage
api_key = '2YYIO7FBC9KHAXI3'
base_url = 'https://www.alphavantage.co/query'

# Function to get forex rate
def get_forex_rate(from_currency, to_currency, api_key):
    params = {
        'function': 'CURRENCY_EXCHANGE_RATE',
        'from_currency': from_currency,
        'to_currency': to_currency,
        'apikey': api_key
    }
    response = requests.get(base_url, params=params)
    data = response.json()
    return data

# Get USD/EUR forex rate

forex_data = get_forex_rate('USD', 'BDT', api_key)
print(forex_data)
