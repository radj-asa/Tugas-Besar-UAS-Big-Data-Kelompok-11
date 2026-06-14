import requests

api_key = "daf58d6f371c61a8b954569aea034b6e"

url = f"https://api.openweathermap.org/data/2.5/weather?q=Jakarta&appid={api_key}&units=metric"

response = requests.get(url)

weather_json = response.json()

print(weather_json)