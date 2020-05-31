# 日本語のランゲージ設定はを参考にしました  
# https://qiita.com/tailak/items/77b90a4df07e4f6a1fc2  
# https://qiita.com/uni-3/items/4edc9875f0449cab7421  

FROM php:7.2-apache  
RUN apt update; apt install git postgresql-client postgresql-server-dev-11 locales \  
    libfreetype6-dev libjpeg62-turbo-dev libpng-dev libmcrypt-dev unzip -y  
RUN echo "ja_JP.UTF-8 UTF-8" > /etc/locale.gen && \  
    locale-gen && update-locale LANG=ja_JP.UTF-8  
RUN a2enmod rewrite  
RUN mv /etc/apache2/apache2.conf /etc/apache2/apache2.conf.bak && \  
    sed -e 's/AllowOverride All/AllowOverride None/' /etc/apache2/apache2.conf.bak > /etc/apache2/apache2.conf   

RUN docker-php-ext-install mbstring pdo pdo_pgsql gd iconv   
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer  

ENV PGHOST=db  
ENV LC_ALL=ja_JP.UTF-8  
COPY src/ /var/www/html/  
