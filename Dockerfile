# Specifies the Docker image from Python
FROM python:3.9.7-slim-bullseye

# Specifies the working directory
WORKDIR /data

# Installs the Python library numpy
RUN pip install eencijfer
