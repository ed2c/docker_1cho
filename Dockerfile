# Specifies the Docker image from Python
FROM python:3.9.7-slim-bullseye

# Specifies the working directory
WORKDIR /data

# Copy the current directory contents into the container at /app
ADD . /app
ADD . /data

# Installs the Python library numpy
RUN pip install eencijfer

# Copies the config.INI file to the working directory
COPY config.INI /data/config.INI
COPY config.INI /home/.eencijfer/config.INI
COPY config.INI /root/.eencijfer/config.INI
RUN mkdir -p /root/eencijfer/eencijfer
RUN mkdir -p /root/eencijfer/eencijfer/import_definitions
RUN mkdir -p /root/.eencijfer/import_definitions

RUN mkdir -p /root/eencijfer/eencijfer/result
RUN mkdir -p /root/eencijfer/eencijfer/results

RUN chmod -R 777 /root/eencijfer
RUN chmod -R 777 /data/

RUN find . -type f -name "*.asc" -exec mv {} /root/eencijfer/eencijfer/ \;
