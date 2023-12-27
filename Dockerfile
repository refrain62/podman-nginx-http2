# FROM nginx:1.9.6
FROM ehekatl/docker-nginx-http2

# 作者名を記載
MAINTAINER Watanabe

# 自己証明書を発行
RUN openssl genrsa 2048 > server.key \
&& openssl req -new -key server.key -subj "/C=JP/ST=Tokyo-to/L=Minato-ku/O=ICS inc./OU=/CN=ics.media" > server.csr \
&& openssl x509 -days 3650 -req -signkey server.key < server.csr > server.crt \
&& cp server.key /etc/nginx/server.key \
&& cp server.crt /etc/nginx/server.crt

# 設定ファイルをコンテナ内に配置
COPY nginx.conf /etc/nginx/nginx.conf
