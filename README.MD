## Prometheus 
 A simple web application that monitors system metrics such as CPU usage, memory usage, and HTTP request counts using Flask, Prometheus, and Grafana.

## Usage
Providig the instructions on how to run and use the project.

Running the simple Web App
If it’s a web app, provide following commands or steps to run the app.

## If using Flask
```
python app.py
```

For example, if the app runs locally, you might say:


### Open the following URL in your browser to run the app
```
http://localhost:5000
```
## Docker Setup
The project includes a Docker setup, this is the steps to build and run it with Docker.

#### Build the Docker container:
```
docker-compose up --build
```
#### Running the container:
```
docker-compose up
```
#### Stopping the container:
```
docker-compose down
```
#### Accessing the application (in a browser):
```
http://localhost:5000
```

### Prometheus and Grafana Setup

 Prometheus and Grafana are integrated into project and how to setup and access it.

###  Prometheus Setup
Configure Prometheus to scrape metrics from the Flask app.

Access the Prometheus UI at:
```
http://localhost:9092
```
### Grafana Setup

1.Once Grafana is running, log in to the Grafana dashboard:
```
http://localhost:3001
```
2.Add Prometheus as a data source.