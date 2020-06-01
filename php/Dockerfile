# 日本語のランゲージ設定はを参考にしました  
# https://qiita.com/tailak/items/77b90a4df07e4f6a1fc2  
# https://qiita.com/uni-3/items/4edc9875f0449cab7421  

FROM php:7.2-apache
RUN apt-get update && apt-get install -y git
RUN docker-php-ext-install mbstring pdo pdo_mysql mysqli

WORKDIR /var/www/html

EXPOSE 80
