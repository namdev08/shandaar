FROM debian:9 
RUN apt-get update
RUN apt-get install apache2 -y
RUN echo "qwerty" > /var/www/html/index.html
RUN service apache2 start
COPY . /var/wwww/html
CMD ["apache2ctl", "-D","FOREGROUND"]
