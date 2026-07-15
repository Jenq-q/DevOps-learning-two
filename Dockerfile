FROM nginx:alpine

COPY nginx.cong /etc/nginx/conf.d/default.conf
Copy index.html /usr/share/nginx/html

EXPOSE 80