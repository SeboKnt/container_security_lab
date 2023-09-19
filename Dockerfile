FROM alpine

RUN apk add nginx
RUN mkdir /www
RUN chown -R nginx:nginx /var/lib/nginx /www

COPY nginx.conf /etc/nginx/nginx.conf
COPY www /www

CMD ["nginx", "-g", "daemon off;"]