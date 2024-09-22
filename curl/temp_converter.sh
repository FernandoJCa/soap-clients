#!/bin/bash

# Celsius to Fahrenheit
curl -X POST -H "Content-Type: text/xml" -d @- https://apps.learnwebservices.com/services/tempconverter << EOF
<soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" xmlns:tem="http://learnwebservices.com/services/tempconverter">
   <soapenv:Header/>
   <soapenv:Body>
      <tem:CelsiusToFahrenheitRequest>
         <tem:TemperatureInCelsius>20</tem:TemperatureInCelsius>
      </tem:CelsiusToFahrenheitRequest>
   </soapenv:Body>
</soapenv:Envelope>
EOF

# Fahrenheit to Celsius
curl -X POST -H "Content-Type: text/xml" -d @- https://apps.learnwebservices.com/services/tempconverter << EOF
<soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" xmlns:tem="http://learnwebservices.com/services/tempconverter">
   <soapenv:Header/>
   <soapenv:Body>
      <tem:FahrenheitToCelsiusRequest>
         <tem:TemperatureInFahrenheit>68</tem:TemperatureInFahrenheit>
      </tem:FahrenheitToCelsiusRequest>
   </soapenv:Body>
</soapenv:Envelope>
EOF