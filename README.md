# Conversor de Temperatura - Proyecto Monorepo

Este proyecto es un monorepo que contiene implementaciones de un cliente para un servicio web de conversión de temperatura en varios lenguajes de programación. El servicio web utilizado está disponible en: https://apps.learnwebservices.com/services/tempconverter?wsdl

## Estructura del Proyecto

```
project/
├── python/
│   └── temp_converter.py
├── groovy/
│   └── TempConverter.groovy
├── javascript/
│   └── tempConverter.js
├── ruby/
│   └── temp_converter.rb
├── php/
│   └── temp_converter.php
├── nodejs/
│   ├── package.json
│   └── tempConverter.js
├── curl/
│   └── temp_converter.sh
├── wget/
│   └── temp_converter.sh
├── run_all.sh
└── Dockerfile
```

## Lenguajes Implementados

1. Python
2. PHP
3. CURL (script de shell)


## Requisitos

Para ejecutar este proyecto localmente, necesitarás tener instalados los siguientes componentes:

- Docker
- Python 3
- Node.js y npm
- Ruby
- PHP
- Groovy
- CURL
- Wget

## Configuración

1. Instala las dependencias necesarias para cada lenguaje:

    - Python:
      ```bash
      pip3 install zeep
      ```
### Ejecución Local

Puedes ejecutar cada script individualmente o usar el script `run_all.sh` para ejecutar todos los clientes a la vez:

```bash
chmod +x run_all.sh
./run_all.sh
```

### Ejecución con Docker

1. Construye la imagen Docker:

```bash
docker build -t temp-converter .
```

2. Ejecuta el contenedor:

```bash
docker run temp-converter
```

Este comando ejecutará todos los scripts dentro del contenedor Docker y mostrará los resultados.

## Descripción de los Scripts

1. **Python** (`python/temp_converter.py`): Utiliza la biblioteca `zeep` para consumir el servicio web SOAP.

2. **PHP** (`php/temp_converter.php`): Usa la clase integrada `SoapClient` de PHP para conectarse al servicio.

3. **CURL** (`curl/temp_converter.sh`): Utiliza el comando `curl` para hacer peticiones POST directamente al servicio web.


## Notas Adicionales

- Todos los scripts están configurados para convertir 20°C a Fahrenheit y 68°F a Celsius como ejemplos.
- El Dockerfile está configurado para instalar todas las dependencias necesarias y ejecutar todos los scripts en un entorno Ubuntu 20.04.
- Si encuentras problemas al ejecutar algún script, asegúrate de tener instaladas todas las dependencias necesarias y que las versiones sean compatibles.
