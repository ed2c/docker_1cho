# eencijfer Docker Image

This Docker image is designed to run the Python module [eencijfer](https://github.com/enningb/eencijfer), providing an easy method to prepare raw 1cho data. 
The module is used for processing raw data files, and this image simplifies its deployment and execution.


# Features

- The Docker image encapsulates the `eencijfer` Python module, making it straightforward to use without needing to install Python or the module on your system.
- Dockerfile maps current working directory to allow user to input the raw data file.
- A config.INI can be used.

# Prerequisites

Ensure Docker is installed on your system. Docker is necessary to run the eencijfer module encapsulated within the Docker image.

# Configuration

There is no configuration needed. If users want to take advantage of the config.INI possibilities of the Python eencijfer package, users can put a config.INI in the cwd to tailor the processing according to their specific use case.
The default configuration assumes reading and writing from the current working directory where the batch or bat script is executed. This means you do not need to specify paths unless you wish to change the default behavior.

# Directories

A `result` directory will be automatically created and populated with the processed files once the `eencijfer` module has completed its processing. 
This directory will be located in the current working directory where the batch or bat script is run, when using the `default` config settings.

# Running the Docker Image

  To run the Docker image, execute the provided batch or bat script. This script will handle the Docker run command, ensuring that the `eencijfer` module is executed within the Docker container.
  The script will automatically map the current working directory to the Docker container, allowing you to easily input the raw data file for processing.

# Example Usage

- Place your raw data files in the directory you wish to run the batch or bat script.
- Run the batch or bat script.
- After processing, the result directory will contain the processed files.

# Troubleshooting

If you encounter any issues, ensure that Docker is running correctly on your system.
Check the Docker logs for any error messages that may indicate what went wrong during the execution.
