from flask import Flask, render_template
from prometheus_client import Counter, generate_latest, start_http_server

# Create a Flask application
app = Flask(__name__)

# Define Prometheus metrics
REQUESTS = Counter('http_requests_total', 'Total number of HTTP requests')

# Start Prometheus metrics server on port 8000
start_http_server(8000)

@app.route('/')
def main():
    # Increment the request counter on each request
    REQUESTS.inc()

    # Render the hello.html template with a color variable
    return render_template('hello.html', color='blue')

@app.route('/metrics')
def metrics():
    # Expose the metrics in Prometheus format
    return generate_latest(), 200, {'Content-Type': 'text/plain; charset=utf-8'}

if __name__ == '__main__':
    # Run the Flask application on port 5000
    app.run(host='0.0.0.0', port=5000)
