FROM ubuntu:latest
RUN apt-get update
RUN apt install -y apache2 \
zip \
unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page290/brighton.zip /var/www/html
WORKDIR /var/www/html
RUN unzip brighton.zip
RUN cp -rvf brighton-html/* .
RUN rm -rf brighton-html brighton.zip
CMD ["apache2ctl" , "-D" , "FOREGROUND"]


