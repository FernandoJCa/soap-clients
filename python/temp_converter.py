from zeep import Client

wsdl = 'https://apps.learnwebservices.com/services/tempconverter?wsdl'
client = Client(wsdl=wsdl)

def celsius_to_fahrenheit(celsius):
    return client.service.CelsiusToFahrenheit(celsius)

def fahrenheit_to_celsius(fahrenheit):
    return client.service.FahrenheitToCelsius(fahrenheit)

print(f"20°C es {celsius_to_fahrenheit(20)}°F")
print(f"68°F es {fahrenheit_to_celsius(68)}°C")