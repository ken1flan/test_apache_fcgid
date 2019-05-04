# apache httpd + mod_fcgid

docker build -t fcgi .

docker run --name fcgi -p 3000:80 -itd fcgi

docker exec -it fcgi bash

