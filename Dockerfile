# Use an official Python runtime as a parent image
FROM python:3.8-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install Chrome and ChromeDriver for Selenium
RUN apt-get update && apt-get install -y \
    wget \
    unzip \
    chromium \
    chromium-driver 

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the Flask port
EXPOSE 5000

# Run the Flask app using gunicorn 
CMD ["gunicorn","-w","4","0.0.0.0:5000","med_app.py"]

