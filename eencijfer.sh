#!/bin/bash

docker build -t my_python_app .
docker run --rm -it --name my_running_app -v $(pwd):/data:rw my_python_app eencijfer "$@"
