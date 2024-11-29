# Use the latest Ubuntu image
FROM ubuntu:latest

# Install necessary dependencies
RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    python3-dev \
    python3-venv \
    python3-flask \
    && rm -rf /var/lib/apt/lists/*

# Create a virtual environment for Python
RUN python3 -m venv /opt/venv

# Activate the virtual environment and install the required packages
RUN /opt/venv/bin/pip install --upgrade pip
RUN /opt/venv/bin/pip install prometheus_client flask

# Set environment variables to use the virtual environment
ENV PATH="/opt/venv/bin:$PATH"

# Set the working directory
WORKDIR /opt

# Copy application files into the container
COPY app.py /opt/app.py
COPY templates /opt/templates

# Expose necessary ports
EXPOSE 5000  
EXPOSE 8000  

# Command to run the Flask application
ENTRYPOINT ["python3", "app.py"]
