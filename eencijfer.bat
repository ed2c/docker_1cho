@echo on

docker build -t my_python_app .
REM docker run -it --name my_running_app -v %cd%:/data:rw my_python_app sh -c "eencijfer init && eencijfer convert --export-format csv"

docker run -it --name my_running_app -v %cd%:/data:rw my_python_app eencijfer convert -C --export-format csv
