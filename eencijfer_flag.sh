#!/bin/bash

docker build -t my_python_app .
docker run -it --name my_running_app -v $(pwd):/data:rw my_python_app eencijfer "$@"

# Stop the container
docker stop my_running_app

# Prune the image
docker image prune -f
