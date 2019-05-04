# apache httpd + mod_fcgid

docker build -t fcgi .

docker run --name fcgi -v $(pwd):/usr/local/lib/test_apache_fcgid -p 3000:80 -itd fcgi

docker exec -it fcgi bash

/usr/sbin/httpd -D FOREGROUND