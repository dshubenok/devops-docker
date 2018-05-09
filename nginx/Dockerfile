FROM nginx:latest

COPY proxy_params /etc/nginx
COPY default.nginx /etc/nginx/conf.d/default.conf

# ничего не делает кроме как указывает что вот эти вольюмы можно будет поключать извне
VOLUME /var/log
VOLUME /etc/letsencrypt
