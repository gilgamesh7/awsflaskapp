# Set base image (host OS)
FROM python:3.8.11-slim

ENV http_proxy 'http://websense.telecom.tcnz.net:8080'
ENV https_proxy 'http://websense.telecom.tcnz.net:8080'

# By default, listen on port 5000
EXPOSE 5000/tcp

# Set the working directory in the container
RUN mkdir /app
WORKDIR /app

# Copy the dependencies file to the working directory
COPY requirements.txt .

# Install  dependencies
RUN pip install -r requirements.txt

# Copy the content of the local src directory to the working directory
COPY app.py .

# Specify the command to run on container start
CMD [ "python", "./app.py" ]
