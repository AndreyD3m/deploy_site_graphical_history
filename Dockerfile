FROM nginx:1.31.2-alpine

# Очищаем дефолтную папку Nginx
RUN rm -rf /usr/share/nginx/html/*

# Копируем напрямую site.html
COPY site.html /usr/share/nginx/html/site.html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
