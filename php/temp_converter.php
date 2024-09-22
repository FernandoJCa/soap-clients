<?php
$client = new SoapClient('https://apps.learnwebservices.com/services/tempconverter?wsdl');

$params = array('TemperatureInCelsius' => 20);
$response = $client->CelsiusToFahrenheit($params);
echo "20°C es " . $response->TemperatureInFahrenheit . "°F\n";

$params = array('TemperatureInFahrenheit' => 68);
$response = $client->FahrenheitToCelsius($params);
echo "68°F es " . $response->TemperatureInCelsius . "°C\n";
?>